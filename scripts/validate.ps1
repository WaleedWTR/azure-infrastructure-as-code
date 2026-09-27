Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

Write-Host "Building Bicep templates..."
az bicep build --file "$PSScriptRoot/../main.bicep"

if ($LASTEXITCODE -ne 0) {
    throw "Bicep build failed."
}

Write-Host "Bicep validation completed successfully."
