Import-Module Pode

Start-PodeServer {
    Add-PodeEndpoint -Address * -Port 8080 -Protocol Http

    Add-PodeRoute -Method Get -Path '/' -ScriptBlock {
        Write-PodeHtmlResponse -Value 'Hello! Welcome to PSTools for K8s Debugging.'
    }

    Add-PodePage -Name 'uptime' -ScriptBlock { Get-Uptime }

    Add-PodePage -Name 'processes' -ScriptBlock { Get-Process }
}
