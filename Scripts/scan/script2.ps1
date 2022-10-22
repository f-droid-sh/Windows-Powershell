# Author: Marcos Cordo Gutiérrez
# email: mcordo2005@gmail.com
# Licensed under GPLv3 or Higher
$encontrado = "False";
$Scite = "True";
Get-WmiObject -Class Win32_Product | ForEach-Object {

    
    if ($_.Name -eq "Scite Text Editor" ){
        $encontrado = "True";
        if ($_.Version -lt 5) {
            $Scite = "False"

        }else{
            $Scite = "True"
        }
    } 
}

if ($encontrado -eq "False" -or $Scite -eq "False"){
    Write-Host -ForegroundColor Red( " [*] SCITE not installed ");
    $msiSciteInstaller = "D:\Marcos\scite.msi"
    $link = "https://github.com/Akirachii/scrits/blob/main/scite-5.3.1x64.msi?raw=true"
    $webclient = New-Object System.Net.WebClient
    $webclient.DownloadFile($link,$msiSciteInstaller)
    msiexec /i "D:\Marcos\scite.msi" /qb

}else{
    Write-Host -ForegroundColor Green( "Go to Linux");
}