#!/bin/sh

die () {
	echo "$*" >&2
	exit 1
}

cd "$(dirname "$0")" ||
die "Could not find the working directory"

test $# = 1 ||
die "Usage: $0 (win32|win64|win-nojre|linux32|linux64|linux-nojre|macosx)"

test -f ij.jar ||
die "Need the ij.jar to include in the directory $(pwd)"

if test jenkins = "$1"
then
	rm -f ij*.{exe,tar.gz} ImageJ*.zip

	result=0
	case "$(uname -s)" in
	MINGW*|CYGWIN*)
		platforms="win32 win64 win-nojre"
		;;
	*)
		platforms="linux32 linux64 linux-nojre macosx"
		;;
	esac
	for platform in $platforms
	do
		sh -x "${0##*/}" $platform ||
		result=$?
	done
	exit $result
fi

VERSION="$(java -jar ij.jar -eval \
	'eval("script", "print(ImageJ.VERSION + ImageJ.BUILD);");' -batch)"
SHORT_VERSION="$(echo "$VERSION" | tr -d '. ')"

JENKINS_URL=http://jenkins.imagej.net/
WINDOWS_JOB_URL=$JENKINS_URL/job/Windows-Fiji-launcher-with-icons
WINDOWS_BUILD_URL=$WINDOWS_JOB_URL/label=Windows/lastSuccessfulBuild
WINDOWS_32_LAUNCHER_URL=$WINDOWS_BUILD_URL/artifact/ImageJ1-win32.exe
WINDOWS_64_LAUNCHER_URL=$WINDOWS_BUILD_URL/artifact/ImageJ1-win64.exe
LAUNCHER_JOB_URL=$JENKINS_URL/job/ImageJ-launcher
LAUNCHER_BUILD_URL=$LAUNCHER_JOB_URL/label=master/lastSuccessfulBuild
LAUNCHER_NAR_URL=$LAUNCHER_BUILD_URL/artifact/launcher/target/nar/
PATTERN=ij-launcher-2.0.0-SNAPSHOT-X-gcc-executable/bin/X-gcc/ij-launcher
LAUNCHER_URL_PATTERN=$LAUNCHER_NAR_URL/$PATTERN

get_launcher_url () {
	case "$1" in
	win32) echo $WINDOWS_32_LAUNCHER_URL;;
	win64) echo $WINDOWS_64_LAUNCHER_URL;;
	linux32) echo $LAUNCHER_URL_PATTERN | sed s/X/i386-Linux/g;;
	linux64) echo $LAUNCHER_URL_PATTERN | sed s/X/amd64-Linux/g;;
	tiger) echo $LAUNCHER_URL_PATTERN | sed s/X/i386-MacOSX/g;;
	macosx) echo $LAUNCHER_URL_PATTERN | sed s/X/x86_64-MacOSX/g;;
	*) die "Unknown platform: $1";;
	esac
}

download_launcher () {
	URL=$(get_launcher_url $1) &&
	case $2 in */*) mkdir -p ImageJ/${2%/*};; esac &&
	curl $URL > ImageJ/$2 &&
	chmod a+x ImageJ/$2
}

rm -rf ImageJ &&
mkdir -p ImageJ &&
cp ij.jar ImageJ/ &&
case "$1" in
win*)
	LAUNCHER_REPLACEMENT= &&
	INSTALL_REPLACEMENT= &&
	cp install.iss ImageJ/ &&
	case "$1" in
	*32)
		INSTALLER_PATH=ij$SHORT_VERSION-jdk6-setup.exe &&
		JRE_REPLACEMENT="s/64-bit/32-bit/" &&
		download_launcher win32 ImageJ.exe &&
		cp -R JREs/win32 ImageJ/jre
		;;
	*64)
		INSTALLER_PATH=ij$SHORT_VERSION-jdk6-64bit-setup.exe &&
		sed -i -e '/\[Setup\]/aArchitecturesInstallIn64BitMode=x64' \
			ImageJ/install.iss &&
		JRE_REPLACEMENT="s/64-bit/64-bit/" &&
		download_launcher win64 ImageJ.exe &&
		cp -R JREs/win64 ImageJ/jre

		;;
	*nojre)
		INSTALLER_PATH=ij$SHORT_VERSION-nojre-setup.exe &&
		JRE_REPLACEMENT="d" &&
		download_launcher win32 ImageJ.exe &&
		download_launcher win64 ImageJ64.exe
		;;
	*)
		die "Unknown architecture: $1"
		;;
	esac &&
	sed -i -e "/^AppVerName/s/1\.46r/$VERSION/" \
		-e "/OutputBaseFilename/s/=.*/=${INSTALLER_PATH%.exe}/" \
		-e "/OutputBaseFilename/aOutputDir=.." \
		ImageJ/install.iss &&
	ISCC=/share/InnoSetup/ISCC.exe &&
	if test ! -x $ISCC
	then
		ISCC="$(pwd)/InnoSetup/ISCC.exe" &&
		if test ! -x $ISCC
		then
			mkdir -p InnoSetup &&
			MSYSGIT_URL=http://repo.or.cz/w/msysgit.git &&
			curl $MSYSGIT_URL/snapshot/f17510a42df.tar.gz |
			tar xzvf - --strip-components=1 -C InnoSetup
		fi
	fi &&
	MAKE_ARTIFACT="(cd ImageJ && $ISCC install.iss)"
	;;
linux*)
	LAUNCHER_REPLACEMENT=';s/ImageJ\.exe/ImageJ/;s/Windows/Linux/' &&
	INSTALL_REPLACEMENT=";s/\nand.*<\/a>//" &&
	case "$1" in
	*32)
		JRE_REPLACEMENT="s/64-bit/32-bit/" &&
		download_launcher linux32 ImageJ &&
		cp -R JREs/linux32 ImageJ/jre
		;;
	*64)
		JRE_REPLACEMENT="s/64-bit/64-bit/" &&
		download_launcher linux64 ImageJ &&
		cp -R JREs/linux64 ImageJ/jre
		;;
	*nojre)
		JRE_REPLACEMENT="d" &&
		download_launcher linux32 ImageJ &&
		download_launcher linux64 ImageJ64
		;;
	*)
		die "Unknown architecture: $1"
		;;
	esac &&
	(cd linux && tar cf - *) |
	(cd ImageJ && tar xf -) &&
	MAKE_ARTIFACT="tar czvf ij$SHORT_VERSION-$1.tar.gz ImageJ"
	;;
macosx)
	# TODO: make ImageJ.app and ImageJ64.app
	LAUNCHER_REPLACEMENT=';s/ImageJ\.exe/ImageJ.app and ImageJ64.app/;s/launcher/app/;s/Windows/MacOSX/' &&
	REPLACEMENT="$(cat << \EOF |
and the OS X installation notes are at
<a href="http://imagej.nih.gov/ij/docs/install/osx.html">imagej.nih.gov/ij/docs/install/osx.html</a>.
This release includes both 32-bit ("ImageJ") and 64-bit
(<a href="http://imagej.nih.gov/ij/docs/install/osx.html#memory64">"ImageJ64"</a>)
applications. "ImageJ64", which is faster and is able to use more than 2 GB of memory,
requires a 64-bit Intel processor running OS X 10.5 or later.
The 32-bit version ("ImageJ") is required to run plugins and commands
(e.g., <i>File&gt;Import&nbsp;As&gt;Using QuickTime</i>) that use QuickTime.
EOF
		tr '\n' ' ' |
		sed -e 's/[\/&]/\\&/g')" &&
	INSTALL_REPLACEMENT=";s/and.*<\/a>/$REPLACEMENT/" &&
	(cd macosx && tar cf - *) |
	(cd ImageJ && tar xf -) &&
	MAKE_ARTIFACT="zip -9r ImageJ$SHORT_VERSION.zip ImageJ"
	;;
*)
	die "Unknown platform: $1"
	;;
esac &&

cp -R app/* ImageJ &&
sed -i \
	-e "s/1\.46/$VERSION/g" \
	-e "/The ImageJ website is at/{N;N;N$INSTALL_REPLACEMENT}" \
	-e "/<dt><b>ImageJ\.exe<\/b><\/dt>/{N$LAUNCHER_REPLACEMENT}" \
	-e "/<dt><b>jre<\/b><\/dt>/{N;$JRE_REPLACEMENT}" \
	ImageJ/README.html &&
eval $MAKE_ARTIFACT
