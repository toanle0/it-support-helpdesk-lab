Write-Host "================================="
Write-Host " IT SUPPORT DIAGNOSTICS DEMO"
Write-Host "================================="

Write-Host "`n[1] Collecting system information..."
Get-ComputerInfo | Select-Object WindowsProductName, WindowsVersion, CsName

Write-Host "`n[2] Checking disk usage..."
Get-PSDrive -PSProvider FileSystem

Write-Host "`n[3] Checking network connectivity..."
Test-Connection google.com -Count 2

Write-Host "`n[4] Top CPU processes..."
Get-Process | Sort-Object CPU -Descending | Select-Object -First 5

Write-Host "`n[5] Recent system events..."
Get-EventLog -LogName System -Newest 5

Write-Host "`nDiagnostics complete."
Write-Host "This simulates IT support troubleshooting workflow."
