$name = "4Fre5h"
$count = 5
$spath = "G:\Path\To\File\template.html"
$opath = "G:\Path\To\Folder\"
$text = "additionalText"

For ($i=1; $i -le $count; $i++) {
$v = Get-Random -Minimum 350.000 -Maximum 450.009
$d = Get-Random -Minimum 8 -Maximum 14
$dr = [math]::Round($v,$d)
$v1 = Get-Random -Minimum 0.00001 -Maximum 5.00009
$d1 = Get-Random -Minimum 3 -Maximum 14
$dr1 = [math]::Round($v1,$d1)
(Get-Content $spath) -Replace '(?<=var increment\s=\s).*', $dr -Replace '(?<=var STEPS_PER_ROTATION\s=\s).*', $dr1 |Set-Content $opath$name$i.html
               }

Read-Host -Prompt "Press Enter to exit"
