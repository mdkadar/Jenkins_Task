pipeline {
    agent any
    triggers {
    cron('''* * 1 * *''')
    }
    stages {
        stage ('Installing updates') {
            steps {
                bat "powershell.exe Install-Module -Name PSWindowsUpdate -Scope CurrentUser"
                bat "powershell.exe Import-Module PSWindowsUpdate"
                bat "powershell.exe Get-WUInstall >> Availble_Updates.txt"
                bat "powershell.exe Get-WUInstall -AcceptAll -IgnoreReboot"
                powershell returnStatus: true, script: '.\\disk-usage.ps1'
                bat "powershell.exe Get-WUHistory >> Updated_Packages.txt"
            }
         }
     }
}
