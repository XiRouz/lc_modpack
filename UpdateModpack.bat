@echo off
winget install --id Git.Git -e --source winget

IF EXIST "git\" (
    echo repository exists
) ELSE (
    IF EXIST "BepInEx\" (
        rd /s /q "BepInEx"
    )
    git clone https://github.com/XiRouz/lc_modpack.git
    echo repository cloned
    robocopy "%cd%\lc_modpack" "%cd%" /E
)
IF EXIST "lc_modpack\" (
    echo git modpack folder delete
    rd /s /q "lc_modpack"
)

git checkout main
git reset --hard
git pull --force
pause
