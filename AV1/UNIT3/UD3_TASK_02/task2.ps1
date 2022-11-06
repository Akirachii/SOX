#AUTHOR PAU GRADOLI
[int]$var = $args.Count

if ( $var -eq 1 ){
    Write-Host "Chosen variable: %OneDrive%"
    Write-Host "Use to acces: $Env:onedrive"
    Write-Host "Output to recieve C:\Users\{username}\OneDrive"
}elseif ( $var -eq 2 ){
    Write-Host "Chosen variable: %DRIVERDATA%"
    Write-Host "Use to acces: $Env:driverdata"
    Write-Host "Output to recieve C:\Windows\System32\Drivers\DriverData"
}elseif ( $var -eq 3 ){ 
    Write-Host "Chosen variable: %COMSPEC%"
    Write-Host "Use to acces: $Env:comspec"
    Write-Host "Output to recieve C:\Windows\system32\cmd.exe"
}elseif ( $var -eq 4 ){ 
    Write-Host "Chosen variable: %SYSTEMROOT%"
    Write-Host "Use to acces: $Env:systemroot"
    Write-Host "Output to recieve C:\Windows"
}elseif ( $var -eq 5 ){ 
    Write-Host "Chosen variable: %TMP"
    Write-Host "Use to acces: $Env:tmp"
    Write-Host "Output to recieve C:\Users\{username}\AppData\Local\Temp"
}else {
    Write-Host "WRONG INPUT **** [1-5]"
}