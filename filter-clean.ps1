# filter-clean.ps1
param([string]$inputFile)

(Get-Content -Raw $inputFile) -replace '"password": ".*"', '"password": "***REDACTED***"' | Set-Content -LiteralPath $inputFile