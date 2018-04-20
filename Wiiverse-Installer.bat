@echo off
mode 113,30
set url=http://download1505.mediafire.com/agn521outizg/pcz9djx3w5yil8s/Wiiverse.wad
set filename=Wiiverse.wad
set version=1.0.0

:0
title Wiiverse Channel Installer v.%version% - Created By FunnyBone and KcrPL
echo                       .-/+ooooo+/:.                        
echo                    `:+oooosssssooooo:`                     
echo                   -ooooymNMMMMMNmhsooo-                
echo                  -oooyNMMMMMMMMMMMNhooo:              
echo         ``.--.``.ooohMMMmmMMMMMmmMMMhooo-  ````      
echo      `:+ooooooooooosNMMhoohMMMdoohMMMsoo+/+ooooo+/-` 
echo     :ooosyhhhhysoooyMMMNddNMMMMmmNMMMyoooossyyysoooo:`
echo   `+ooshNMMMMMMNhoosMMMMMMMMMMMMMMMMMsooymNMMMMNNhsoo+..
echo   :ooomMMMMMMMMMMdoohMMMMhydmdyhMMMMdoodMMMMMMMMMMNsoo+` 
echo   oooyMMMMMMMMMMMMyoohMMMNdyyyhmMMMdsoyMMMMMMMMMMMMmooo-  
echo  `ooohMMMMMMMMMMMMyooosdMMMMMMMMMdyooohMMMMMMMMMMMMNooo:   
echo   +oosMMMMMMMMMMMNsooosdMMMMMMMMMdsooosNMMMMMMMMMMMhooo.   
echo   .oooyNMMMMMMMMNyooosmMMMMMMMMMMMNyoooymMMMMMMMMNhooo:    
echo    -ooosmMMMMMMmsoooyNMMMMMMMMMMMMMNyooosdMMMMMMNyooo/     
echo    -oooyNMMMMMMNyooyNMMmMMMMMMMMMmMMMyooyNMMMMMMMmsoo+`              Please wait...
echo   -ooohMMMMMMMMNmsyNMMhdMMMMMMMMMmhMMMysmNMMMMMMMMmsoo+`   
echo .:ooodMNNMMMMMhssyNMMhoNMMMMMMMMMNoyMMNysshNMMMMMmMNsoo+.  
echo -ooosdMNsMMMMMhosmMMMmoomMMMMMMMMMNoodMMMNyohMMMMMymMmsooo: 
echo oooyNMMhoMMMMMhoyNMMMmoodMMMMMMMMMmoodMMMMyoyMMMMMysMMNhooo.
echo +oosdmmsomMMMMNysshhysooyMMMMMMMMMhoooyhhysyNMMMMMysdNmyooo.
echo `/ooooooodMMyyNMdooooooosMMMyyyMMMyooooooodMMhhmMMoooooooo- 
echo  .-:ooooyMNooNMhooooooooNMMsosMMNoooooooohMMoodMmoooo/:-`  
echo    .ooooyMNooNMyoooooooodMMsosMMmooooooooyMMoodMhoooo:     
echo    .ooosNNNssNNNsoooooosdMMyosMMmsoooooosNNNyoNNNyooo/     
echo     :ooooooooooooooooooNMMMmodMMMNoooooooooooooooooo/`     
echo      `-://+++++++++oooosssssoossssoooo+++++++++//:-`       
echo                    .:+ooooooooooooo+:.                     

sleep 3
cls
echo Welcome to the Wiiverse Channel Installer! 
echo If you would want to download the channel, press any key to start the download, or close the window to cancel.
pause>NUL
goto 1
:1
cls
echo Now Downloading... Please wait.
powershell -command "(new-object System.Net.WebClient).DownloadFile('"%url%"', '"%filename%"')" >NUL
set /a temperrorlevel=%errorlevel%

if not %temperrorlevel%==0 goto 1_fail
echo Download Completed! Please check the directory of this installer for the file named "Wiiverse.wad".
pause
exit /b 0

:1_fail
cls
echo Downloading failed with exit code: %temperrorlevel%
echo Press any button to try again...
pause>NUL
goto 1