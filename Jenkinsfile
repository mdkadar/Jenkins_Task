pipeline {
    agent any 
    stages {
        stage ('Installing updates') {
            steps {
                //bat "powershell.exe Start-process powershell -Verb runAs -ArgumentList '.disk-usage.ps1'"
                bat "powershell.exe Install-Module -Name PSWindowsUpdate -Scope CurrentUser"
                bat "powershell.exe Import-Module PSWindowsUpdate"
                bat "powershell.exe Get-WUInstall >> Availble_Updates.txt"
                bat "powershell.exe Get-WUInstall -AcceptAll"
                bat "powershell.exe Get-WUHistory >> Updated_Packages.txt"
                /*PowerShell(". '.\\disk-usage.ps1'")
                $arg = "-file C:\filename.ps1"
                bat "powershell.exe Get-WUInstall -AcceptAll –IgnoreReboot"
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
