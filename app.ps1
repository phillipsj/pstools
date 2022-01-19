Import-Module Pode

Start-PodeServer -DisableTermination {
    Add-PodeEndpoint -Address * -Port 3000 -Protocol Http

    Add-PodeRoute -Method Get -Path '/' -ScriptBlock {
        Write-PodeHtmlResponse -Value 'Hello! Welcome to PSTools for K8s Debugging.'
    }

    Add-PodePage -Name 'uptime' -ScriptBlock { Get-Uptime }

    Add-PodePage -Name 'processes' -ScriptBlock { Get-Process }
}
