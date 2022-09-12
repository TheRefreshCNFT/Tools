$name = "4Fre5h"
$spath = "G:\My Drive\HP Laptop\Projects\CNFTs\InProgress\JS\4fre5h\workint\Test\test\template.html"
$opath = "G:\My Drive\HP Laptop\Projects\CNFTs\InProgress\JS\4fre5h\workint\Test\test\"
$text = "additionalText"


$range = Get-Random -Minimum 350.001 -Maximum 450.009
$range1 = Get-Random -Minimum 0.00001 -Maximum 5.00009
(Get-Content $spath) -Replace '(?<=var increment\s=\s).*', $range -Replace '(?<=var STEPS_PER_ROTATION\s=\s).*', $range1 |Set-Content $opath$name"1".html
$range = Get-Random -Minimum 350.001 -Maximum 450.009
$range1 = Get-Random -Minimum 0.00001 -Maximum 5.00009
(Get-Content $spath) -Replace '(?<=var increment\s=\s).*', $range -Replace '(?<=var STEPS_PER_ROTATION\s=\s).*', $range1 |Set-Content $opath$name"2".html
$range = Get-Random -Minimum 350.001 -Maximum 450.009
$range1 = Get-Random -Minimum 0.1 -Maximum 5.9
(Get-Content $spath) -Replace '(?<=var increment\s=\s).*', $range -Replace '(?<=var STEPS_PER_ROTATION\s=\s).*', $range1 |Set-Content $opath$name"3".html
$range = Get-Random -Minimum 350.001 -Maximum 450.009
$range1 = Get-Random -Minimum 0.1 -Maximum 5.9
(Get-Content $spath) -Replace '(?<=var increment\s=\s).*', $range -Replace '(?<=var STEPS_PER_ROTATION\s=\s).*', $range1 |Set-Content $opath$name"4".html
$range = Get-Random -Minimum 350.001 -Maximum 450.009
$range1 = Get-Random -Minimum 0.00000001 -Maximum 5.000000009
(Get-Content $spath) -Replace '(?<=var increment\s=\s).*', $range -Replace '(?<=var STEPS_PER_ROTATION\s=\s).*', $range1 |Set-Content $opath$name"5".html
