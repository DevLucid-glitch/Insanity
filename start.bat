@echo off
net config server /srvcomment:"Windows Server 2019 By Insane" > out.txt 2>&1
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /V EnableAutoTray /T REG_DWORD /D 0 /F > out.txt 2>&1
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /f /v Wallpaper /t REG_SZ /d D:\a\wallpaper.bat
net user Insane Insan3@RDP /add >nul
net localgroup administrators Insane /add >nul
net user Insane /active:yes >nul
net user installer /delete
diskperf -Y >nul
sc config Audiosrv start= auto >nul
sc start audiosrv >nul
ICACLS C:\Windows\Temp /grant Insane:F >nul
ICACLS C:\Windows\installer /grant Insane:F >nul
echo Successfully Installed, Duration : 6Hours. If duration runs out please rebuild again.
echo IP :
tasklist | find /i "ngrok.exe" >Nul && curl -s localhost:4040/api/tunnels | jq -r .tunnels[0].public_url || echo "Unable to get NGROK tunnel, make sure NGROK_AUTH_TOKEN is correct in Settings> Secrets> Repository secret. Maybe your previous VM is still running: https://dashboard.ngrok.com/status/tunnels "
echo Username : Insane
echo Password : Insan3@RDP
echo Login using the credentials above.
echo Your RDP is ready. 2GB RAM 256GB SSD
echo Please don't use it for mining.
ping -n 10 127.0.0.1 >nul
