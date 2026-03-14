Write-Host "Collecting system diagnostics..."

Write-Host "`nTop CPU Processes:"
Get-Process | Sort-Object CPU -Descending | Select-Object -First 5

Write-Host "`nDisk Usage:"
Get-PSDrive -PSProvider FileSystem

Write-Host "`nNetwork Configuration:"
ipconfig /all

Write-Host "`nRecent System Events:"
Get-EventLog -LogName System -Newest 10
