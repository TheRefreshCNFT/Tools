$name = "4Fre5h"
$spath = "G:\My Drive\HP Laptop\Projects\CNFTs\InProgress\JS\4fre5h\workint\Test\test\template.html"
$opath = "G:\My Drive\HP Laptop\Projects\CNFTs\InProgress\JS\4fre5h\workint\Test\test\"
$text = "additionalText"

For ($i=1; $i -le 5; $i++) {
$v = Get-Random -Minimum 350.001 -Maximum 450.009
$d = Get-Random -Minimum 8 -Maximum 14
$dr = [math]::Round($v,$d)
(Get-Content $spath) -Replace '(?<=var increment\s=\s).*', $dr |Set-Content $opath$name$i.html
               }

Read-Host -Prompt "Press Enter to exit"
