#ifndef AppDisplayVersion
#define AppDisplayVersion "1.0.0-preview7"
#endif
#ifndef AppNumericVersion
#define AppNumericVersion "1.0.0.7"
#endif
[Setup]
AppId={{E3026A84-EC16-445C-9789-039394F32298}
AppName=Qinglian
AppVersion={#AppNumericVersion}
AppVerName=Qinglian {#AppDisplayVersion}
DefaultDirName={localappdata}\Programs\Qinglian
DefaultGroupName=Qinglian
PrivilegesRequired=lowest
ArchitecturesAllowed=x64compatible
ArchitecturesInstallIn64BitMode=x64compatible
MinVersion=10.0.17763
AppMutex=Local\Qinglian.Windows
OutputDir={#OutputDir}
OutputBaseFilename=Qinglian-{#AppDisplayVersion}-windows-x64-setup
Compression=lzma2/fast
SolidCompression=yes
CloseApplications=no
UninstallDisplayIcon={app}\Qinglian.exe
SetupIconFile={#IconFile}
WizardStyle=modern
[Files]
Source: "{#SourceDir}\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
[Icons]
Name: "{userprograms}\Qinglian"; Filename: "{app}\Qinglian.exe"
[Run]
Filename: "{app}\Qinglian.exe"; Description: "Launch Qinglian"; Flags: nowait postinstall skipifsilent
