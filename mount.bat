@echo off
setlocal enabledelayedexpansion

REM Check if .env file exists
if exist .env (
    set ambient = "%1";
    
    if "%ambient%"=="dev" (
        REM Ejecuta Docker Compose con el archivo dev
        docker-compose -f docker-compose-dev.yml up
    ) else (
        REM Ejecuta Docker Compose normalmente
        docker-compose up
    )

) else (
    REM Execute Docker Compose normally
    docker-compose up
)

endlocal