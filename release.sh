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
	LAUNCHER_NAME=ImageJ.exe &&
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
	LAUNCHER_NAME=ImageJ &&
	INSTALL_REPLACEMENT=";s/\nand.*<\/a>//"
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
	MAKE_ARTIFACT="tar czvf ij$SHORT_VERSION-$1.tar.gz ImageJ"
	;;
macosx)
	# TODO: make ImageJ.app and ImageJ64.app
	LAUNCHER_NAME=Contents/MacOS/ImageJ &&
	INSTALL_REPLACEMENT=";s/\nand.*<\/a>//" &&
	download_launcher tiger Contents/MacOS/ImageJ-tiger &&
	download_launcher macosx Contents/MacOS/ImageJ &&
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
	-e "/<dt><b>ImageJ\.exe<\/b><\/dt>/s/ImageJ\.exe/$LAUNCHER_NAME/" \
	-e "/<dt><b>jre<\/b><\/dt>/{N;$JRE_REPLACEMENT}" \
	ImageJ/README.html &&
eval $MAKE_ARTIFACT
