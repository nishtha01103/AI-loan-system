@echo off
echo Starting AI Loan System Backend...
cd /d %~dp0

if not exist backend\venv (
    echo Virtual environment not found! Please wait for setup to finish.
    pause
    exit /b
)

echo Activating virtual environment...
call backend\venv\Scripts\activate.bat

echo Starting server...
echo (If this fails with 'ModuleNotFoundError', dependencies are still installing. Please try again in a minute.)
python backend\main.py
pause
