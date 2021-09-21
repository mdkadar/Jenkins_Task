pipeline {
    agent any 
    stages {
        stage ('Installing updates') {
            steps {
                PowerShell(". '.\disk-usage.ps1'")
                /*
                 PowerShell("Install-Module -Name PSWindowsUpdate")
  	             PowerShell("Import-Module PSWindowsUpdate")
                 PowerShell("Get-WUInstall -ListOnly")
                 PowerShell("Get-WUInstall -AcceptAll –IgnoreReboot")
                 PowerShell("Get-WUHistory")
                */
            }
         }
     }
}
