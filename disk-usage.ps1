$arg = Get-WmiObject Win32_Product -Filter "Name like 'Octopus Deploy Server'" | Select-Object -ExpandProperty Version
$versions = Invoke-RestMethod "https://octopus.com/download/upgrade/v3"
$upgradeVersion = $versions[-1].Version
If($arg -ne $upgradeVersion) {
Write-Host "Not upto date.";
} else {
Write-Host "upto date."
}
