pipeline {
    agent any 
    stages {
        stage ('Installing updates') {
            steps {
                 PowerShell("Install-Module -Name PSWindowsUpdate") 
                 /*bat 'Install-Module -Name PSWindowsUpdate -RequiredVersion 2.1.0.1'*/
  	             bat "Import-Module PSWindowsUpdate"
                 bat "Get-WUInstall -ListOnly"
                 bat "Get-WUInstall -AcceptAll –IgnoreReboot"
                 bat "Get-WUHistory"
            }
         }
     }
}
