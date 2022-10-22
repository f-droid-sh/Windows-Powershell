# Author: Marcos Cordo Gutiérrez
# email: mcordo2005@gmail.com
# Licensed under GPLv3 or Higher
$Update = $args[0]
wmic qfe | Select-String "Update" | Select-String "$Update"

