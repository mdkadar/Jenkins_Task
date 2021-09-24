pipeline {
    agent any 
    stages {
        stage ('Installing updates') {
            steps {
                //bat "powershell.exe Start-process powershell -Verb runAs -ArgumentList '.disk-usage.ps1'"
                bat "powershell.exe Install-Module -Name PSWindowsUpdate -Scope CurrentUser"
                bat "powershell.exe Import-Module PSWindowsUpdate"
                bat "powershell.exe Get-WUInstall >> output.txt"
                //bat "powershell.exe Get-WUInstall -AcceptAll –IgnoreReboot -Scope CurrentUser"
                //bat "powershell.exe Get-WUHistory >> output.txt"
                /*PowerShell(". '.\\disk-usage.ps1'")
                $arg = "-file C:\filename.ps1"
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
