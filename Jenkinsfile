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
                bat "powershell.exe '$arg = Get-WmiObject Win32_Product -Filter "Name like 'Octopus Deploy Server'" | Select-Object -ExpandProperty Version If($arg -ne "2021.1.7665") Write-Host "Not upto date." else Write-Host "upto date.""
                timeout(time: 1, unit: 'MINUTES') {
                bat "powershell.exe Get-WUHistory >> Updated_Packages.txt"
                }
            }
         }
     }
}
