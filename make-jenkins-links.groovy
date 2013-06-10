#!/usr/bin/jenkins-cli groovy

if (this.args.length != 3) {
	throw new IllegalArgumentException("Usage: make-jenkins-links <job> <tag> <build-number>")
}

projectName = this.args[0]
tag = this.args[1]
buildNumber = Integer.parseInt(this.args[2])

instance = jenkins.model.Jenkins.instance

outputDirectory = new File(instance.root, "userContent/ij1-" + tag)
if (!outputDirectory.isDirectory()) outputDirectory.mkdirs()
else {
	list = outputDirectory.listFiles()
	if (list != null) list.each() {
		file -> file.delete()
	}
}

def addArtifacts(build) {
	build.getArtifacts().each() {
		artifact ->
		source = artifact.getFile()
		target = new File(outputDirectory, source.getName())
		Runtime.getRuntime().exec((String[])[ 'ln', '-s', source.getAbsolutePath(), target.getAbsolutePath() ].toArray())
	}
}

if (projectName != null) {
	map = instance.getItemMap()
	project = map.get(projectName)
	build = project.getBuildByNumber(buildNumber)

	if (build.result != null) {
		failed = build.result.isWorseThan(hudson.model.Result.SUCCESS)
	} else {
		failed = false
		build.getRuns().each() {
			run ->
			if (run.result.isWorseThan(hudson.model.Result.SUCCESS)) {
				failed = true
			}
		}
	}
	adjective = (failed ? "un" : "") + "successful"

	labels = []
	if (tag.equals("major")) {
		labels.add("Last major version")
		labels.add("Last " + adjective + " major version")
		tagBackgroundColor = '#FFAA00'
	} else if (tag.equals("minor") || tag.equals("letter")) {
		labels.add("Last minor version")
		labels.add("Last " + adjective + " minor version")
		tagBackgroundColor = '#00FF00'
	} else if (tag.equals("micro") || tag.equals("daily") ||
			tag.equals("nightly")) {
		labels.add("Last daily build")
		labels.add("Last " + adjective + " daily build")
		tagBackgroundColor = '#FFFF00'
	}

	description = project.getDescription()
	listOffset = description.lastIndexOf('<ul>')
	if (listOffset < 0) {
		listOffset = description.length()
		description += '<ul></ul>'
	}
	endListOffset = description.indexOf('</ul>', listOffset)
	if (endListOffset < 0) endListOffset = description.length()

	labels.each() {
		label ->
		line = '<li>'
		line += label
		line += ' (<a href="'
		line += buildNumber
		line += '/">#'
		line += buildNumber
		line += '</a>):<br/>\n'
		line += '    <img src="'
		line += instance.RESOURCE_PATH
		line += '/images/16x16/'
		line += (failed ? 'red.png' : 'blue.png')
		line += '" /><span style="padding: 1px; border: 1px solid #C0C000; margin: 0px; background: '
		line += tagBackgroundColor
		line += '; color: #000000;">'
		line += tag
		line += '</span> Windows installers are <a href="label=Windows/'
		line += buildNumber
		line += '/">here</a>,\n'
		line += '    MacOSX and Linux builds <a href="label=master/'
		line += buildNumber
		line += '/">here</a>.</li>\n'

		offset = description.indexOf('<li>' + label, listOffset)
		if (offset < 0) {
			offset = endListOffset
			endOffset = endListOffset
			line = '  ' + line
		} else {
			endOffset = description.indexOf('</li>', offset)
			if (endOffset < 0) {
				endOffset = endListOffset
			} else {
				endOffset += 5
				for (;;) {
					if (endOffset >= description.length()) {
						break
					}
					ch = description.charAt(endOffset)
					if (ch != '\r' && ch != '\n') break
					endOffset++
				}
			}
		}
		newDescription = description.substring(0, offset)
		newDescription += line
		newDescription += description.substring(endOffset)
		description = newDescription
		endListOffset += line.length() - (endOffset - offset)
	}
	project.setDescription(newDescription)

	addArtifacts(build)
	if (build instanceof hudson.matrix.MatrixBuild) {
		build.getRuns().each() {
			run ->
			addArtifacts(run)
		}
	}

}
