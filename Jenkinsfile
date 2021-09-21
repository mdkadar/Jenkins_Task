pipeline {
    agent any 
    stages {
        stage ('Installing updates') {
            steps {
                 PowerShell("Install-Module -Name PSWindowsUpdate") 
                 /*bat 'Install-Module -Name PSWindowsUpdate -RequiredVersion 2.1.0.1'*/
  	             PowerShell("Import-Module PSWindowsUpdate")
                 PowerShell("Get-WUInstall -ListOnly")
                 PowerShell("Get-WUInstall -AcceptAll –IgnoreReboot")
                 PowerShell("Get-WUHistory")
            }
         }
     }
}
