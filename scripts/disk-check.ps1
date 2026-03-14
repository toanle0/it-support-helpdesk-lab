Write-Host "Checking disk usage..."

Get-PSDrive -PSProvider FileSystem

Write-Host "`nRunning disk health check..."
Get-Volume
