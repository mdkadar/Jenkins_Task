Install-Module -Name PSWindowsUpdate -RequiredVersion 2.1.0.1
Import-Module PSWindowsUpdate
Get-WUInstall -ListOnly
Get-WUInstall -AcceptAll –IgnoreReboot
Get-WUHistory
