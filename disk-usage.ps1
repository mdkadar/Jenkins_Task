$arg = Get-WmiObject Win32_Product -Filter "Name like 'Octopus Deploy Server'" | Select-Object -ExpandProperty Version
If($arg -ne "2021.1.7665") {
Write-Host "Not upto date.";
} else {
Write-Host "upto date."
}
