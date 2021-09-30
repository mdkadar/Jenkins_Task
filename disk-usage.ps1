$arg = Get-WmiObject Win32_Product -Filter "Name like 'Octopus Deploy Server'" | Select-Object -ExpandProperty Version
$versions = Invoke-RestMethod "https://octopus.com/download/upgrade/v3"
$upgradeVersion = $versions[-1].Version
If($arg -ne $upgradeVersion) {
Write-Host "Octopus is not upto date.";
} else {
Write-Host "Octopus is upto date."
}
