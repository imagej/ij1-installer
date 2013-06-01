[Setup]
AppName=ImageJ
AppVerName=ImageJ 1.46r
AppPublisher=NIH
AppPublisherURL=http://imagej.nih.gov/ij/
AppSupportURL=http://imagej.nih.gov/ij/
AppUpdatesURL=http://imagej.nih.gov/ij/
DefaultDirName={pf}\ImageJ
DefaultGroupName=ImageJ
OutputBaseFilename=ij146-nojre-setup
Compression=lzma
AllowNoIcons=yes

[Files]
Source: *; DestDir: "{app}"; Flags: ignoreversion recursesubdirs replacesameversion sortfilesbyextension

[Dirs]
Name: "{app}";

[Run]
Filename: "{app}\ImageJ.exe"; Description: "{cm:LaunchProgram,ImageJ}"; Flags: postinstall skipifsilent nowait

[Icons]
Name: "{group}\ImageJ"; Filename: "{app}\ImageJ.exe"; WorkingDir: "{app}";
Name: "{group}\{cm:ProgramOnTheWeb,ImageJ}"; Filename: "{app}\ImageJ.url";
Name: "{group}\{cm:UninstallProgram,ImageJ}"; Filename: "{uninstallexe}";
Name: "{userdesktop}\ImageJ"; Filename: "{app}\ImageJ.exe"; WorkingDir: "{app}"; Tasks: desktopicon;
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\ImageJ"; Filename: "{app}\ImageJ.exe"; WorkingDir: "{app}"; Tasks: quicklaunchicon;

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}";
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}";

[UninstallDelete]
Type: files; Name: "{app}\ImageJ.url";

[CustomMessages]
NameAndVersion=%1 version %2
AdditionalIcons=Additional icons:
CreateDesktopIcon=Create a &desktop icon
CreateQuickLaunchIcon=Create a &Quick Launch icon
ProgramOnTheWeb=%1 on the Web
UninstallProgram=Uninstall %1
LaunchProgram=Launch %1
AssocFileExtension=&Associate %1 with the %2 file extension
AssocingFileExtension=Associating %1 with the %2 file extension...
