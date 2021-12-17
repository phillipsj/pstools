FROM mcr.microsoft.com/powershell:latest

SHELL ["pwsh", "-Command"]

RUN Install-Module -Name Polaris -Force

COPY app.ps1 app.ps1

CMD ["pwsh", "-File", "app.ps1"]
