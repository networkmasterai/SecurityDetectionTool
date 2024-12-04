# Basic Vulnerability Scanner Script
# Disclaimer: For educational purposes only. Use responsibly.

Write-Host "Starting vulnerability scan..." -ForegroundColor Green

# Check for outdated software
Write-Host "Checking for outdated software..."
Get-WmiObject -Class Win32_Product | Select-Object Name, Version | Sort-Object Name

# Check for missing Windows updates
Write-Host "Checking for missing Windows updates..."
Get-WindowsUpdateLog | Select-String -Pattern "Missing"

# Check firewall status
Write-Host "Checking Windows Firewall status..."
$firewallStatus = Get-NetFirewallProfile | Select-Object Name, Enabled
$firewallStatus | ForEach-Object {
    Write-Host ("Firewall for " + $_.Name + ": " + ($_.Enabled ? "Enabled" : "Disabled"))
}

# Check for insecure listening ports
Write-Host "Scanning for open and listening ports..."
netstat -an | Select-String "LISTENING"

# Check for weak password policies
Write-Host "Checking password policies..."
Get-LocalUser | Select-Object Name, PasswordRequired, PasswordChangeable, PasswordNeverExpires

# Check for potentially dangerous services
Write-Host "Checking for unnecessary or dangerous services..."
Get-Service | Where-Object { $_.StartType -eq "Automatic" -and $_.Status -eq "Running" } | 
Select-Object DisplayName, Status, StartType

# Check for user accounts with elevated privileges
Write-Host "Checking for accounts with admin privileges..."
Get-LocalGroupMember -Group "Administrators" | Select-Object Name, ObjectClass

Write-Host "Vulnerability scan completed. Review the above findings." -ForegroundColor Yellow
