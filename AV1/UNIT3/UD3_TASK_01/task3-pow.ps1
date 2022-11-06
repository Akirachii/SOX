#PAU <3
$paths = $args[0]


[bool]$path = Test-Path $paths

if ( $paths.Startswith("C") -eq "True" ){
    if ( $path -eq "True" ){
        write-host "$paths exists and its absolute"
        Get-Acl $paths | Select-String Nt
    }
    else {
        write-host "$paths is absolute but does not exist :c"
    }

}else{
    if ( $path -eq "True" ){
        write-host "$paths exists and its Relative"
        Get-Acl $paths | Select-String Nt
    }
    else {
        write-host "$paths is Relative but does not exist :c"
    }

}


