ARG BASE
FROM mcr.microsoft.com/powershell:${BASE}

SHELL ["pwsh", "-Command"]

RUN Install-Module -Name Polaris -Force

COPY app.ps1 app.ps1

CMD ["pwsh", "-File", "app.ps1"]
