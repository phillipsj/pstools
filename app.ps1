Import-Module Polaris

New-PolarisRoute -Path "/" -Method GET -Scriptblock {
    $Response.Json((Get-Uptime | ConvertTo-Json))
} 

# Start the server
$app = Start-Polaris -Port 80 -MinRunspaces 1 -MaxRunspaces 5 -UseJsonBodyParserMiddleware -Verbose # all params are optional

while($app.Listener.IsListening){
    Wait-Event callbackcomplete
}
