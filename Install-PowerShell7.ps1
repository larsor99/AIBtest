Write-Host "Install PowerShell 7"

Invoke-WebRequest https://github.com/PowerShell/PowerShell/releases/download/v7.0.2/PowerShell-7.0.2-win-x64.msi -OutFile $env:TEMP\PowerShell-7.0.2-win-x64.msi
msiexec.exe /package $env:TEMP\PowerShell-7.0.2-win-x64.msi /quiet ADD_EXPLORER_CONTEXT_MENU_OPENPOWERSHELL=1 REGISTER_MANIFEST=1 | Out-Null