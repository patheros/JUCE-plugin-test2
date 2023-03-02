#define Version Trim(FileRead(FileOpen("..\VERSION")))
#define Year GetDateTimeString("yyyy","","")

[Setup]
AppName=TestPlugin
OutputBaseFilename=TestPlugin-{#Version}-Windows
AppCopyright=Copyright (C) {#Year} Andrew Hanson
AppPublisher=Andrew Hanson
AppVersion={#Version}
DefaultDirName="{commoncf64}\VST3\TestPlugin.vst3\"
DisableStartupPrompt=yes

[Files]
Source: "..\Builds\TestPlugin_artefacts\Release\VST3\TestPlugin.vst3\Contents\x86_64-win\*"; DestDir: "{app}\Contents\x86_64-win"; Flags: overwritereadonly ignoreversion;
