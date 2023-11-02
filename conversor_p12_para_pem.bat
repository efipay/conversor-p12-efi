@echo off
setlocal enabledelayedexpansion

REM Define a página de código UTF-8
chcp 65001 > nul

REM Defina a variável openssl com o caminho para o executável do OpenSSL
set "openssl=%~dp0\lib\openssl.exe"

REM Solicita o nome do arquivo .p12
set /p p12_file=Digite o nome do arquivo .p12 a ser convertido (sem a extensão):

REM Concatena com a extensão .p12
set "p12_file=!p12_file!.p12"

REM Verifica a extensão do arquivo
for %%I in (!p12_file!) do (
  set "extension=%%~xI"
)
if /i "!extension!" neq ".p12" (
  echo O arquivo informado não possui a extensão .p12.
  pause
  exit /b
)

REM Verifica se o arquivo .p12 existe
if not exist "!p12_file!" (
  echo O arquivo "!p12_file!" não foi encontrado.
  pause
  exit /b
)

REM Executa a conversão para .pem
set "output_file=!p12_file:.p12=.pem!"
"%openssl%" pkcs12 -in "!p12_file!" -out "!output_file!" -nodes -password pass:""
if %errorlevel% neq 0 (
  echo Falha na conversão do certificado.
  pause
  exit /b
)

echo Certificado convertido com sucesso. O arquivo "!output_file!" foi criado.
pause
