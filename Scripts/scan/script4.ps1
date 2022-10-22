# Author: Marcos Cordo Gutiérrez
# email: mcordo2005@gmail.com
# Licensed under GPLv3 or Higher
Get-ItemProperty -Path 'HKCU:\SOFTWARE\Microsoft\Windows\Shell\Associations\UrlAssociations\https\UserChoice' |  ForEach-Object {
    if ($_.ProgID -eq "Mozilla Firefox"){    
        Write-Host -BackgroundColor Yellow -ForegroundColor DarkMagenta "Mozilla Firefox Is not the default";
    }elseif ($_.ProgID -eq "Edge"){
        Write-Host -BackgroundColor Blue -ForegroundColor Green "Edge Is not the default";   
    }elseif ($_.ProgID -eq "Google Chrome"){    
        Write-Host -BackgroundColor Yellow -ForegroundColor Blue "Google Chrome Is not the default"        
    }else{
            Write-Host $_.ProgID "Is the default"
        }
   }