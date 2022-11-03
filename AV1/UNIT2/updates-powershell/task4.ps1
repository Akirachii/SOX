

$123 = Read-Host "Select a number from 2 to 200"

[bool] $truefal = $123 -match '^\d+$'

$FileContent = wmic qfe 
$Matches = Select-String -InputObject $FileContent -Pattern "Update" -AllMatches
$var = ($Matches.Matches.Count)

if ($truefal -eq "True"){
    Write-Host "Variable numerica"
    if ($123 -lt 101){
        Write-Host "Good number"
        if($123 -gt 2){
        Write-Host "Good number"
        }else{
        Write-Host "Bad Number"
        }
    }
    Write-Host "The total uploads installed is $var"

    Get-Date

}






