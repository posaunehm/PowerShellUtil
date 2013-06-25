﻿if (-not(Get-NetFirewallRule -Name PowerShellRemoting-In))
{
    New-NetFirewallRule `
        -Name PowerShellRemoting-In `
        -DisplayName PowerShellRemoting-In `
        -Description "Windows PowerShell Remoting required to open for public connection. not for private network." `
        -Group "Windows Remote Management" `
        -Enabled True `
        -Profile Any `
        -Direction Inbound `
        -Action Allow `
        -EdgeTraversalPolicy Block `
        -LooseSourceMapping $False `
        -LocalOnlyMapping $False `
        -OverrideBlockRules $False `
        -Program Any `
        -LocalAddress Any `
        -RemoteAddress Any `
        -Protocol TCP `
        -LocalPort 5985 `
        -RemotePort Any `
        -LocalUser Any `
        -RemoteUser Any 
}
else
{
    
}