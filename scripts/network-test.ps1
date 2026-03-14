Write-Host "Testing network connectivity..."

Test-Connection google.com -Count 4

Write-Host "`nTesting DNS resolution:"
Resolve-DnsName google.com

Write-Host "`nCurrent IP configuration:"
ipconfig
