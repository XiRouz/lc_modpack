IF EXIST "BepInEx\" (
    echo BepInEx folder exists
    rd /s /q "BepInEx"
    git checkout main
    git reset --hard
    git pull --force
    git status
) ELSE (
    echo BepInEx folder doesnt exist
)

pause