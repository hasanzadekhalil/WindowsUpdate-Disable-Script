$url = "https://raw.githubusercontent.com/hasanzadekhalil/WindowsUpdate-Disable-Script/main/DisableScript.ps1"
$scriptPath = "$env:TEMP\DisableScript.ps1"

# Download the script
Invoke-WebRequest -Uri $url -OutFile $scriptPath

# Execute the script with administrator permissions
Start-Process -FilePath "powershell.exe" -ArgumentList "-ExecutionPolicy Bypass -File `"$scriptPath`"" -Verb RunAs
