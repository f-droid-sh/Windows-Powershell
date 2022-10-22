# Author: Maecos Cordo Gutiérrez
# email: mcordo2005@mail.com
# Licensed under GPLv3 or Higher
$Path = Test-Path "C:\MrYellow\Installers"
if ($Path -eq "True"){
    write-host -ForegroundColor Green ("[*] The Path exist");
    Get-ChildItem -Path "C:\MrYellow" -file -Exclude *.msi -Recurse | ForEach-Object {
        Write-Host ("$_")
    }
}else{
   Write-Host -ForegroundColor Red ("[*] The Path doesn't exist, but i can create it")
   New-Item "C:\MrYellow\Installers" -ItemType Directory
    
}