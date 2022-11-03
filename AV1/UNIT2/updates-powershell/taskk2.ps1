#Autora = Pau Gradoli Cebrian

$var = $args[0]

wmic qfe | Select-String "Update" | Select-String "$var"

