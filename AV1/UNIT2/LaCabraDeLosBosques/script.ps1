#Pau gradoli :D
$sum = 0
$con1 = 0
$sal = 0

for ($num = 0;$num -lt 366; $num++){
    $rand = (Get-Random -Minimum 1 -Maximum 9)
    $sum = $sum + $rand
    $rest1 = $rand % 3
    $llena = $num % 28


    if ( $llena -eq 0){

        Write-Host "SALVADOS POR LA CABRA, SALVADOS POR SHUB-NIGGURATH"
		$sal = $sal + 1
    }elseif ( $rest1 -eq 0 -or $num -eq 1){
        $con1 = $con1 + 1
		####Sacrificio
    }




}

Write-Host "Total de sacrificios" $con1
Write-Host "Total de salvados" $sal
Write-Host "Total de cachorros" $sum