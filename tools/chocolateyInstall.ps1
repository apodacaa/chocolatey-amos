$ErrorActionPreference = 'Stop'
$packageName = 'amos'
$version = '1.5.0'
$url64 = "https://github.com/apodacaa/amos/releases/download/v$version/amos-windows-amd64.exe"
$checksum64 = 'db83f9784653e40977c39d3989abbfccf77a404241d147f1f5a5101616dd5202'
$checksumType64 = 'sha256'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'exe'
  url64bit       = $url64
  checksum64     = $checksum64
  checksumType64 = $checksumType64
  validExitCodes = @(0)
}

# Download to temp location
$tempFile = Join-Path $env:TEMP "$packageName.exe"
Get-ChocolateyWebFile @packageArgs -FileFullPath $tempFile

# Install to Chocolatey bin directory
$binPath = Join-Path $env:ChocolateyInstall 'bin'
$targetPath = Join-Path $binPath "$packageName.exe"
Copy-Item $tempFile $targetPath -Force
Remove-Item $tempFile -Force

Write-Host "Amos has been installed to $targetPath" -ForegroundColor Green
Write-Host "Run 'amos' to start the application" -ForegroundColor Green
