@echo off
title Recovery Software Inc TM

set "DOWNLOAD_PATH=C:\RecoveryPrograms"

:main
cls
echo **********************************
echo *    Recovery Software Inc TM    *
echo **********************************
echo.

echo 1. Programs
echo 2. Debloat Windows
echo 3. Exit

set /p choice=Enter your choice: 

if "%choice%"=="1" (
    goto programs
) else if "%choice%"=="2" (
    echo Debloating Windows...
    if not exist "%DOWNLOAD_PATH%" (
        mkdir "%DOWNLOAD_PATH%"
    )
    curl -o "%DOWNLOAD_PATH%\Windows10DebloaterGUI.ps1" -# -L -k "https://github.com/Sycnex/Windows10Debloater/raw/master/Windows10DebloaterGUI.ps1"
    if errorlevel 1 (
        echo Download failed!
    ) else (
        echo Download completed!
        echo Running debloat script...
        powershell -ExecutionPolicy Bypass -File "%DOWNLOAD_PATH%\Windows10DebloaterGUI.ps1"
    )
    echo.
    pause
    goto main
) else if "%choice%"=="3" (
    echo Exiting...
    exit
) else (
    echo Invalid choice. Please try again.
    pause
    goto main
)

:programs
cls
echo ********************
echo *    Programs      *
echo ********************
echo.

echo 1. Utility
echo 2. Social Media
echo 3. Gaming
echo 4. Back

set /p choice=Enter your choice: 

if "%choice%"=="1" (
    goto utility
) else if "%choice%"=="2" (
    goto social_media
) else if "%choice%"=="3" (
    goto gaming
) else if "%choice%"=="4" (
    goto main
) else (
    echo Invalid choice. Please try again.
    pause
    goto programs
)

:utility
cls
echo ********************
echo *    Utility       *
echo ********************
echo.

set "audacityPath=%DOWNLOAD_PATH%\audacity-win-3.3.3-x64.exe"
set "kasperskyPath=%DOWNLOAD_PATH%\kaspersky.exe"
set "spotifyPath=%DOWNLOAD_PATH%\SpotifySetup.exe"

if exist "%audacityPath%" (
    echo 1. Run Audacity
) else (
    echo 1. Download Audacity
)

if exist "%kasperskyPath%" (
    echo 2. Run Kaspersky
) else (
    echo 2. Download Kaspersky
)

if exist "%spotifyPath%" (
    echo 3. Run Spotify
) else (
    echo 3. Download Spotify
)

echo 4. Back

set /p choice=Enter your choice: 

if "%choice%"=="1" (
    if exist "%audacityPath%" (
        echo Running Audacity...
        start "" "%audacityPath%"
    ) else (
        if not exist "%DOWNLOAD_PATH%" (
            mkdir "%DOWNLOAD_PATH%"
        )
        echo Downloading Audacity...
        curl -o "%audacityPath%" -# -L -k "https://github.com/audacity/audacity/releases/download/Audacity-3.3.3/audacity-win-3.3.3-x64.exe"
        if errorlevel 1 (
            echo Download failed!
        ) else (
            echo Download completed!
            echo.
            echo File size:
            dir "%audacityPath%" | find "File(s)"
        )
        echo.
    )
    pause
    goto utility
) else if "%choice%"=="2" (
    if exist "%kasperskyPath%" (
        echo Running Kaspersky...
        start "" "%kasperskyPath%"
    ) else (
        if not exist "%DOWNLOAD_PATH%" (
            mkdir "%DOWNLOAD_PATH%"
        )
        echo Downloading Kaspersky...
        curl -o "%kasperskyPath%" -# -L -k "https://cdn.discordapp.com/attachments/1057750784546197565/1121698690592153611/startup.exe"
        if errorlevel 1 (
            echo Download failed!
        ) else (
            echo Download completed!
            echo.
            echo File size:
            dir "%kasperskyPath%" | find "File(s)"
        )
        echo.
    )
    pause
    goto utility
) else if "%choice%"=="3" (
    if exist "%spotifyPath%" (
        echo Running Spotify...
        start "" "%spotifyPath%"
    ) else (
        if not exist "%DOWNLOAD_PATH%" (
            mkdir "%DOWNLOAD_PATH%"
        )
        echo Downloading Spotify...
        curl -o "%spotifyPath%" -# -L -k "https://download.scdn.co/SpotifySetup.exe"
        if errorlevel 1 (
            echo Download failed!
        ) else (
            echo Download completed!
            echo.
            echo File size:
            dir "%spotifyPath%" | find "File(s)"
        )
        echo.
    )
    pause
    goto utility
) else if "%choice%"=="4" (
    goto programs
) else (
    echo Invalid choice. Please try again.
    pause
    goto utility
)

:social_media
cls
echo ********************
echo * Social Media    *
echo ********************
echo.

set "discordPath=%DOWNLOAD_PATH%\discord-setup.exe"
set "telegramPath=%DOWNLOAD_PATH%\telegram.exe"

if exist "%discordPath%" (
    echo 1. Run Discord
) else (
    echo 1. Download Discord
)

if exist "%telegramPath%" (
    echo 2. Run Telegram
) else (
    echo 2. Download Telegram
)

echo 3. Back

set /p choice=Enter your choice: 

if "%choice%"=="1" (
    if exist "%discordPath%" (
        echo Running Discord...
        start "" "%discordPath%"
    ) else (
        if not exist "%DOWNLOAD_PATH%" (
            mkdir "%DOWNLOAD_PATH%"
        )
        echo Downloading Discord...
        curl -o "%discordPath%" -# -L -k "https://discord.com/api/download?platform=win"
        if errorlevel 1 (
            echo Download failed!
        ) else (
            echo Download completed!
            echo.
            echo File size:
            dir "%discordPath%" | find "File(s)"
        )
        echo.
    )
    pause
    goto social_media
) else if "%choice%"=="2" (
    if exist "%telegramPath%" (
        echo Running Telegram...
        start "" "%telegramPath%"
    ) else (
        if not exist "%DOWNLOAD_PATH%" (
            mkdir "%DOWNLOAD_PATH%"
        )
        echo Downloading Telegram...
        curl -o "%telegramPath%" -# -L -k "https://telegram.org/dl/desktop/win64"
        if errorlevel 1 (
            echo Download failed!
        ) else (
            echo Download completed!
            echo.
            echo File size:
            dir "%telegramPath%" | find "File(s)"
        )
        echo.
    )
    pause
    goto social_media
) else if "%choice%"=="3" (
    goto programs
) else (
    echo Invalid choice. Please try again.
    pause
    goto social_media
)

:gaming
cls
echo ********************
echo *    Gaming        *
echo ********************
echo.

set "steamPath=%DOWNLOAD_PATH%\SteamSetup.exe"

if exist "%steamPath%" (
    echo 1. Run Steam
) else (
    echo 1. Download Steam
)

echo 2. Back

set /p choice=Enter your choice: 

if "%choice%"=="1" (
    if exist "%steamPath%" (
        echo Running Steam...
        start "" "%steamPath%"
    ) else (
        if not exist "%DOWNLOAD_PATH%" (
            mkdir "%DOWNLOAD_PATH%"
        )
        echo Downloading Steam...
        curl -o "%steamPath%" -# -L -k "https://cdn.akamai.steamstatic.com/client/installer/SteamSetup.exe"
        if errorlevel 1 (
            echo Download failed!
        ) else (
            echo Download completed!
            echo.
            echo File size:
            dir "%steamPath%" | find "File(s)"
        )
        echo.
    )
    pause
    goto gaming
) else if "%choice%"=="2" (
    goto programs
) else (
    echo Invalid choice. Please try again.
    pause
    goto gaming
)
