pipeline {
    agent any 
    stages {
        stage ('Installing updates') {
            steps {
                 bat 'Install-Module -Name PSWindowsUpdate -RequiredVersion 2.1.0.1'
  	             bat "Import-Module PSWindowsUpdate"
                 bat "Get-WUInstall -ListOnly  #List the available updates for your computer on the update server for remote server add -ComputerName servername"
                 bat "Get-WUInstall -AcceptAll –IgnoreReboot  #Automatically install all available updates for your os"
                 bat "Get-WUHistory #getting the history of installed updates"
            }
         }
     }
}
