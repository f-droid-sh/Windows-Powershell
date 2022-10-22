# Author: Marcos Cordo Gutiérrez
# email: mcordo2005@gmail.com
# Licensed under GPLv3 or Higher
$Route = (Get-ItemProperty HKCU:\Software\Microsoft\Windows\Shell\Associations\UrlAssociations\http\UserChoice -Name ProgId).ProgID
$Registros = 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\System'
$Name_conf = "DefaultAssociationsConfiguration"
$XML = '\\NetworkShare\EDGE\defaultapplication.XML'
$HTTP = "IE.HTTP"
if($Route -eq $HTTP) {
    New-ItemProperty -Path $registros -Name $name_conf -Value $XML -PropertyType String -Force | Out -Null

}else{
    exit
}