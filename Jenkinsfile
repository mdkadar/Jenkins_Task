pipeline {
    agent any
    triggers { cron('0 1 0 0 0') }
    stages {
        stage ('Installing updates') {
            steps {
                bat "powershell.exe Install-Module -Name PSWindowsUpdate -Scope CurrentUser"
                bat "powershell.exe Import-Module PSWindowsUpdate"
                bat "powershell.exe Get-WUInstall >> Availble_Updates.txt"
                bat "powershell.exe Get-WUInstall -AcceptAll -IgnoreReboot"
                bat "powershell.exe Get-WUHistory >> Updated_Packages.txt"                
            }
         }
     }
}
