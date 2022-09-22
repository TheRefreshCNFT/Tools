$name = "4Fre5h"
$count = 5
$spath = "G:\Path\To\File\template.html"
$opath = "G:\Path\To\Folder\"
$text = "additionalText"

For ($i=1; $i -le $count; $i++) {
$v1 = Get-Random -Minimum 350.000 -Maximum 450.009
$d1 = Get-Random -Minimum 8 -Maximum 14
$dr1 = [math]::Round($v1,$d1)
$color1 = "#{0:X6}" -f (Get-Random -Maximum 0xFFFFFF)


$v2 = Get-Random -Minimum 0.00001 -Maximum 5.00009
$d2 = Get-Random -Minimum 3 -Maximum 14
$dr2 = [math]::Round($v2,$d2)
$color2 = "#{0:X6}" -f (Get-Random -Maximum 0xFFFFFF)

$v3 = Get-Random -Minimum 350.000 -Maximum 450.009
$d3 = Get-Random -Minimum 8 -Maximum 14
$dr3 = [math]::Round($v3,$d3)
$color3 = "#{0:X6}" -f (Get-Random -Maximum 0xFFFFFF)

$v4 = Get-Random -Minimum 0.00001 -Maximum 5.00009
$d4 = Get-Random -Minimum 3 -Maximum 14
$dr4 = [math]::Round($v4,$d4)
$color4 = "#{0:X6}" -f (Get-Random -Maximum 0xFFFFFF)

$v5 = Get-Random -Minimum 0.00001 -Maximum 5.00009
$d5 = Get-Random -Minimum 3 -Maximum 14
$dr5 = [math]::Round($v5,$d5)
$color5 = "#{0:X6}" -f (Get-Random -Maximum 0xFFFFFF)

(Get-Content $spath) -Replace '(?<=var increment\s=\s).*', $dr1 -Replace '(?<=var STEPS_PER_ROTATION\s=\s).*', $dr2 -Replace '(?<=var c1\s=\s).*', "`"$color1`"" -Replace '(?<=c2\s=\s).*', "`"$color2`""  -Replace '(?<=var c3\s=\s).*', "`"$color3`"" |Set-Content $opath$name$i.html
               }

Read-Host -Prompt "Press Enter to exit"
