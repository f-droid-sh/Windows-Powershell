# Author: Marcos Cordo Gutiérrez
# email: mcordo2005@gmail.com
# Licensed under GPLv3 or Higher
$Scite = Read-Host "The Scite is installed? S/N --> "
$msiSciteInstaller = "D:\Marcos\scite.msi"
if ($Scite -eq "S"){
    $Version = Read-Host "Introduce number version--> "
    if ( $Version -eq 5){
        write-host -ForegroundColor Green "The version is correct "
    }else{
        
        $msiSciteInstaller = "D:\Marcos\scite.msi"
        $link = "https://github.com/Akirachii/scrits/blob/main/scite-5.3.1x64.msi?raw=true"
        $webclient = New-Object System.Net.WebClient
        $webclient.DownloadFile($link,$msiSciteInstaller);
        msiexec /x $msiSciteInstaller /q
        sleep 10
        msiexec /i $msiSciteInstaller /qb
}   
}else{
    if ($Scite -eq "N"){
        $msiSciteInstaller = "D:\Marcos\scite.msi"
        $link = "https://github.com/Akirachii/scrits/blob/main/scite-5.3.1x64.msi?raw=true"
        $webclient = New-Object System.Net.WebClient
        $webclient.DownloadFile($link,$msiSciteInstaller);
        msiexec /i $msiSciteInstaller /qb
    }else{
         Write-Host -ForegroundColor Green( "Go to Linux");
    }
   
}