$name = "4Fre5h"
$spath = "G:\My Drive\HP Laptop\Projects\CNFTs\InProgress\JS\4fre5h\workint\Test\test\template.html"
$opath = "G:\My Drive\HP Laptop\Projects\CNFTs\InProgress\JS\4fre5h\workint\Test\test\"
$text = "additionalText"

$v = Get-Random -Minimum 350.000 -Maximum 450.009
$d = Get-Random -Minimum 8 -Maximum 14
$dr = [math]::Round($v,$d)
(Get-Content $spath) -Replace '(?<=var increment\s=\s).*', $dr |Set-Content $opath$name"1".html
$v = Get-Random -Minimum 450.000 -Maximum 550.009
$d = Get-Random -Minimum 8 -Maximum 14
$dr = [math]::Round($v,$d)
(Get-Content $spath) -Replace '(?<=var increment\s=\s).*', $dr |Set-Content $opath$name"2".html
$v = Get-Random -Minimum 550.000 -Maximum 650.009
$d = Get-Random -Minimum 8 -Maximum 14
$dr = [math]::Round($v,$d)
(Get-Content $spath) -Replace '(?<=var increment\s=\s).*', $dr |Set-Content $opath$name"3".html
$v = Get-Random -Minimum 650.000 -Maximum 750.009
$d = Get-Random -Minimum 8 -Maximum 14
$dr = [math]::Round($v,$d)
(Get-Content $spath) -Replace '(?<=var increment\s=\s).*', $dr |Set-Content $opath$name"4".html
$v = Get-Random -Minimum 850.000 -Maximum 950.009
$d = Get-Random -Minimum 8 -Maximum 14
$dr = [math]::Round($v,$d)
(Get-Content $spath) -Replace '(?<=var increment\s=\s).*', $dr |Set-Content $opath$name"5".html

Read-Host -Prompt "Press Enter to exit"
