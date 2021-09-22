pipeline {
    agent any 
    stages {
        stage ('Installing updates') {
            steps {
                $arg = "-file C:\filename.ps1"
                bat "start-process PowerShell -verb runas –argumentlist $arg"
               /*  bat "powershell.exe Install-Module -Name PSWindowsUpdate"
                bat "powershell.exe Import-Module PSWindowsUpdate"
                bat "powershell.exe Get-WUInstall -ListOnly"
                bat "powershell.exe Get-WUInstall -AcceptAll –IgnoreReboot"
                bat "powershell.exe Get-WUHistory"
                PowerShell(". '.\\disk-usage.ps1'")
                
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
