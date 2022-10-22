# Author: Maecos Cordo Gutiérrez
# email: mcordo2005@mail.com
# Licensed under GPLv3 or Higher
[ins] $power = Read-Host "Tell me a number in seq 2 to 100 -->"
[bool] $comprobar = $power -match "^\d+$"
if ($comprobar -eq "True"){

    if ($power -gt 2){
        Write-Host ($power)
        if ( $power -lt 101){

            Write-Host ($power)
            write-host -ForegroundColor Green ("[*] The variable typology and number is correct");
            $w = wmic qfe
            $Update = Select-String -InputObject $w -Pattern "Update" -AllMatches 
            $count = $Update.Matches.Count
            Write-Host("Total Updates: $count");
            Get-Date
        }
    }
}else{
    Write-Host -ForegroundColor red ("[*] The variable typology and number isn't correct");
}