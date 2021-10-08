@echo off
echo Rehydrated Downpatch GordoLeal edition v0.1
echo ! Welcome, before continue please make sure you did the following steps:
echo - Make sure ".NET Core SDK" is installed : https://dotnet.microsoft.com/download
echo - Steam is working : https://steamstat.us/
echo - Make sure you own the game on Steam : https://store.steampowered.com/app/969990/SpongeBob_SquarePants_Battle_for_Bikini_Bottom__Rehydrated/
pause
Set /p user="Steam Username:"
cls
Set /p pass="Steam password:"
cls
echo Please type the manifest for the patch you want to download
echo ! 
echo patch 1.0.4/rev: 611616  manifest:6322912655307981707
echo patch 1.0.3/rev: 603899  manifest:8029231884565495947
echo patch 1.0.2/rev: 603296  manifest:2134143037094134729
echo patch 1.0.0/rev: 600294  manifest:1586507095676886083
echo for a specific manifest, please look here: https://steamdb.info/depot/969991/manifests/
echo !
Set /p verManifest="manifest:"
cls
echo make sure you did type everthing correctly before continue
echo Manifest: %verManifest%
echo User: %user%
echo !
echo DepotDownloader will start the download, if you have 2FA he will ask for the code
echo after the download is done, you can find the game files inside the folder depots\969991\
echo ! WARNING:  if the download is stuck in 1.37 or saying "connection timeout" is normal, is just Steam being strange but the program is downloading, let the program alone for a few hours and soon he will say "100% done".
pause
cls
dotnet DepotDownloader.dll -app 969990 -depot 969991 -manifest %verManifest% -username %user% -password %pass%