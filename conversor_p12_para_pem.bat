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

REM Solicita a senha do certificado
set /p cert_password=Digite a senha do certificado (ou pressione Enter para senha vazia):

REM Executa a conversão para .pem
set "output_file=!p12_file:.p12=_cert.pem!"
"%openssl%" pkcs12 -in "!p12_file!" -out "!output_file!" -clcerts -nodes -passin pass:"%cert_password%"
if %errorlevel% neq 0 (
  echo Falha na conversão do certificado.
  pause
  exit /b
)

echo Certificado convertido com sucesso. O arquivo "!output_file!" foi criado.

REM Verifica se o usuário deseja separar a chave privada
set /p separate_key=Você deseja separar a chave privada em um arquivo separado? (s/n):

if /i "!separate_key!" equ "S" (
  set "key_file=!p12_file:.p12=_key.pem!"
  "%openssl%" pkcs12 -in "!p12_file!" -out "!key_file!" -nocerts -nodes -passin pass:"%cert_password%"
  if %errorlevel% neq 0 (
    echo Falha na conversão da chave privada.
    pause
    exit /b
  )
  echo Chave privada separada com sucesso. O arquivo "!key_file!" foi criado.
) else (
  echo A chave privada foi mantida no arquivo "!output_file!".
)

pause
