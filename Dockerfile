FROM mcr.microsoft.com/powershell:latest


RUN apt update
RUN apt upgrade -y
RUN pwsh -c 'Install-Module az -Force -Confirm:$False'
RUN pwsh -c 'Install-Module Microsoft.Graph.Beta -Force -Confirm:$False'
RUN pwsh -c 'Install-Module -Name ExchangeOnlineManagement -Force -Confirm:$False'
RUN pwsh -c 'Install-Module -Name MicrosoftTeams -Force -Confirm:$False -AllowClobber'



RUN pwsh -c 'Get-Date -UFormat "%d-%B-%Y | %H:%M" | Out-File -FilePath "buildTimeUTCContainer"'
