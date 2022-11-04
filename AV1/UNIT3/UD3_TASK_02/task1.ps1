#author pau
[int]$var = $args.Count

if ( $var -eq 1 ) {
    Write-Host "YOU HAVE CHOSEN %APPDATA%"
    Write-Host "IT SHOWS === C:\Users\USUARIO\AppData\Roaming"
}elseif ( $var -eq 2 ) {
    Write-Host "YOU HAVE CHOSEN %TEMP%"
    Write-Host "IT SHOWS === C:\Users\USUARIO\AppData\Local\Temp"
}elseif ( $var -eq 3 ){ 
    Write-Host "YOU HAVE CHOSEN %COMSPEC%"
    Write-Host "IT SHOWS === C: Windows System32 cmd.exe"
}elseif ( $var -eq 4 ){ 
    Write-Host "YOU HAVE CHOSEN %USERDOMAIN%"
    Write-Host "DOMAIN OF THE ACTUAL USER"
}elseif ( $var -eq 5 ){ 
    Write-Host "YOU HAVE CHOSEN %PSModulePath%"
    Write-Host "IT SHOWS === %SystemRoot% system32 WindowsPowerShell v1.0 Modules"
}else {
    Write-Host "WRONG INPUT **** [1-5]"
}

Write-Host "IN ALL CASES WE CAN EXECUTE WITH 'WIN+R' OR IN TERMINAL"