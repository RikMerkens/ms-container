FROM mcr.microsoft.com/powershell:latest


RUN apt update
RUN apt upgrade -y
RUN Install-Module az -Force -Confirm:$False
RUN Install-Module Microsoft.Graph.Beta -Force -Confirm:$False
RUN Install-Module -Name ExchangeOnlineManagement -Force -Confirm:$False
RUN Install-Module -Name MicrosoftTeams -Force -Confirm:$False -AllowClobber



