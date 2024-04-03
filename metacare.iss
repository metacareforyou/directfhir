#define AppName "MetacareAI"
#define AppVersion "1.0"  

#define MainPath SourcePath
#define MainPathInstallerFiles MainPath + "\installer files" 
#define FhirExe "directfhir.exe"


[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications. 
AppId={{E77D85E9-9DB1-4800-B939-70E1AC7D950F}
AppName={#AppName}
AppVersion={#AppVersion}  
ArchitecturesAllowed=x64
ArchitecturesInstallIn64BitMode=x64
DefaultDirName={autopf}\{#AppName}
DisableDirPage=no
DisableProgramGroupPage=yes
DisableFinishedPage=no
PrivilegesRequired=admin
OutputBaseFilename={#AppName}
Uninstallable=yes 
//Compression=lzma
SetupIconFile=./images/metacare_64x64.ico
SetupLogging=yes
SolidCompression=yes
UserInfoPage=no
WizardSmallImageFile=./images/metacare_128x128_white_bg.bmp
WizardStyle=modern

[Icons]
Name: "{commondesktop}\{#AppName}"; Filename: "{app}\{#FhirExe}";

[Files]
Source: "{#MainPathInstallerFiles}\directfhir\*"; DestDir: "{app}"; Flags: onlyifdoesntexist recursesubdirs;

[Languages]
//You can add more languages here
Name: "english"; MessagesFile: "compiler:Default.isl" 
  

