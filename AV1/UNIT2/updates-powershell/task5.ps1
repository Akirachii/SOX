
$mkdir = Test-Path "C:\MrYellow\Installers";

if ("$mkdir" -eq "False"){

    New-Item "C:\MrYellow\Installers" -ItemType Directory

}elseif ("$mkdir" -eq "True"){

    Write-Host ("xd");

    Get-ChildItem -Path "C:\MrYellow" -file -Exclude *.msi -Recurse | ForEach-Object {

    Write-Host ("$_");
    }

}


