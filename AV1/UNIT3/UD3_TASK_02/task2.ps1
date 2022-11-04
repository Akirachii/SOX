#AUTHOR PAU GRADOLI
[int]$var = $args.Count

if ( $var -eq 1 ) {
    Write-Host "YOU HAVE CHOSEN %ALLUSERSPROFILE%"
    Write-Host "SHOWS PATH OF GLOBAL PROFILE OF ALL USERS"
}elseif ( $var -eq 2 ) {
    Write-Host "YOU HAVE CHOSEN %CMDCMDLINE%"
    Write-Host "SHOWS WHAT COMMAND HAS BEEN USED TO OPEN CMD"
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