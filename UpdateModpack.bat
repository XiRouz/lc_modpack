@echo off
winget install --id Git.Git -e --source winget

IF EXIST ".git\" (
    echo repository exists
) ELSE (
    git clone https://github.com/XiRouz/lc_modpack.git
    echo repository cloned
    robocopy "%cd%\lc_modpack" "%cd%" /E
)

git checkout main
git pull
pause
