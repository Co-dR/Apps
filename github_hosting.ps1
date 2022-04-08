#UNZIP FILES
#Expand-Archive -LiteralPath C:\AppServices\PeakOem.zip -DestinationPath C:\AppServices
# INSTALL APP
#Start-Process -Wait -FilePath "C:\AppServices\7z2107-x64.exe" -ArgumentList "/S" -PassThru

# CREATE FOLDER IN C:\
#New-Item -Path 'C:\AppServices' -ItemType Directory

#KEYSHOCK Ejecutable
    # URL and Destination
$url = "https://github.com/Co-dR/Apps/raw/main/Keyshock_v1_04.exe"
$dest = "C:\AppServices"
    # DOWNLOAD FILE .EXE
Start-BitsTransfer -Source $url -Destination $dest
    #Install App
Start-Process -Wait -FilePath "C:\AppServices\Keyshock_v1_04.exe" -ArgumentList "/S" -PassThru

#ZPCAN CONZOLE Ejecutable
    # URL and Destination
$url = "https://github.com/Co-dR/Apps/raw/main/ZpCanConsole.zip"
$dest = "C:\AppServices"
    # DOWNLOAD FILE .EXE
Start-BitsTransfer -Source $url -Destination $dest
    #UNZIP File
Expand-Archive -LiteralPath C:\AppServices\ZpCanConsole.zip -DestinationPath C:\AppServices
    #Install App
Start-Process -Wait -FilePath "C:\AppServices\ZpCanConsole\zpcanconsole.exe" -ArgumentList "/S" -PassThru


    #Shortcut Desktop
