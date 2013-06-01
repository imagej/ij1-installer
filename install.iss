[Setup]
AppName=ImageJ
AppVerName=ImageJ 1.46r
AppPublisher=NIH
AppPublisherURL=http://imagej.nih.gov/ij/
AppSupportURL=http://imagej.nih.gov/ij/
AppUpdatesURL=http://imagej.nih.gov/ij/
DefaultDirName={pf}\ImageJ
DefaultGroupName=ImageJ
AllowNoIcons=yes
Compression=lzma
OutputBaseFilename=ij146-nojre-setup
SolidCompression=yes

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: *; DestDir: "{app}"; Flags: ignoreversion recursesubdirs replacesameversion sortfilesbyextension

[Icons]
Name: "{group}\ImageJ"; Filename: "{app}\ImageJ.exe"; WorkingDir: {app}
Name: "{group}\{cm:ProgramOnTheWeb,ImageJ}"; Filename: "{app}\ImageJ.url"
Name: "{group}\{cm:UninstallProgram,ImageJ}"; Filename: "{uninstallexe}"
Name: "{userdesktop}\ImageJ"; Filename: "{app}\ImageJ.exe"; Tasks: desktopicon; WorkingDir: {app}
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\ImageJ"; Filename: "{app}\ImageJ.exe"; Tasks: quicklaunchicon; WorkingDir: {app}

[Run]
Filename: "{app}\ImageJ.exe"; Description: "{cm:LaunchProgram,ImageJ}"; Flags: nowait postinstall skipifsilent

[UninstallDelete]
Type: files; Name: "{app}\ImageJ.url"

[Dirs]
Name: {app}; Permissions: users-modify
