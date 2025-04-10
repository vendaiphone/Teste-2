@echo off
title Viva Real Scraper
echo Iniciando servidor Flask...
cd /d %~dp0

REM Verifica se venv já existe
if not exist venv (
    echo Criando ambiente virtual...
    python -m venv venv
)

call venv\Scripts\activate
pip install --upgrade pip >nul
pip install -r requirements.txt >nul

python app.py
pause
