pipeline {
    agent any
    stages {
        stage ('Installing updates') {
            steps {
                triggers ([cron('0 2 0 0 0')])
                bat "powershell.exe Install-Module -Name PSWindowsUpdate -Scope CurrentUser"
                bat "powershell.exe Import-Module PSWindowsUpdate"
                bat "powershell.exe Get-WUInstall >> Availble_Updates.txt"
                bat "powershell.exe Get-WUInstall -AcceptAll -IgnoreReboot"
                timeout(time: 1, unit: 'MINUTES') {
                bat "powershell.exe Get-WUHistory >> Updated_Packages.txt"
                }
                echo 'Hello world!'
            }
         }
     }
}
