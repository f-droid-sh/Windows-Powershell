# Author: Marcos Cordo Gutiérrez
# email: mcordo2005@gmail.com
# Licensed under GPLv3 or Higher
$encontrado = "False";

Get-WmiObject -Class Win32_Product | ForEach-Object {

    
    if ($_.Name -eq "Scite Text Editor" ){
        $encontrado = "True";
        if ($_.Version -lt 5) {
            Write-Host -ForegroundColor Red("[*] WARNING Vulnerabilty Detected");
        }else{
            Write-Host -ForegroundColor Green("Everything is fine ^_^ ");
        }
    } 

}

if ( $encontrado -eq "False"){
    Write-Host -ForegroundColor Red( " [*] SCITE not installed ");
}else{
    Write-Host -ForegroundColor Green( "SCITE installed");
}