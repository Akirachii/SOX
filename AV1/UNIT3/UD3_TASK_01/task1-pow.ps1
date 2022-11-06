#PAU <3
$paths = $args[0]

[bool]$path = Test-Path $paths



if ( $paths.Startswith("C") -eq "True" ){
    if ( $path -eq "True" ){
        write-host "$paths exists and its absolute"
    }
    else {
        write-host "$paths is absolute but does not exist :c"
    }


}elseif ( $paths.Startswith("C") -eq "False"){

    write-host "$paths is not an absolute path"


}else {
    Write-Host "unexpected input"

}


