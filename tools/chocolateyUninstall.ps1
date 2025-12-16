$ErrorActionPreference = 'Stop'
$packageName = 'amos'
$binPath = Join-Path $env:ChocolateyInstall 'bin'
$targetPath = Join-Path $binPath "$packageName.exe"

if (Test-Path $targetPath) {
  Remove-Item $targetPath -Force
  Write-Host "Amos has been uninstalled" -ForegroundColor Green
} else {
  Write-Warning "Amos executable not found at $targetPath"
}
