$name = "4Fre5h"
$count = 312
$spath = "G:\My Drive\HP Laptop\Projects\CNFTs\InProgress\JS\4fre5h\workint\Test\test\template3d.html"
$opath = "G:\My Drive\HP Laptop\Projects\CNFTs\InProgress\JS\4fre5h\workint\Test\test\3d\"
$text = "additionalText"

For ($i=1; $i -le $count; $i++) {
$d1 = Get-Random -Minimum 300.000 -Maximum 500.009
$d2 = Get-Random -Minimum 300.000 -Maximum 500.009
$d3 = Get-Random -Minimum 300.000 -Maximum 500.009
$dIndex = "getRandomInt(0, 2);"
$color1 = "#{0:X6}" -f (Get-Random -Maximum 0xFFFFFF)
$color2 = "#{0:X6}" -f (Get-Random -Maximum 0xFFFFFF)
$color3 = "#{0:X6}" -f (Get-Random -Maximum 0xFFFFFF)
$color4 = "#{0:X6}" -f (Get-Random -Maximum 0xFFFFFF)
$color5 = "#{0:X6}" -f (Get-Random -Maximum 0xFFFFFF)
$color6 = "#{0:X6}" -f (Get-Random -Maximum 0xFFFFFF)
$color7 = "#{0:X6}" -f (Get-Random -Maximum 0xFFFFFF)
$color8 = "#{0:X6}" -f (Get-Random -Maximum 0xFFFFFF)
$color9 = "#{0:X6}" -f (Get-Random -Maximum 0xFFFFFF)
$color10 = "#{0:X6}" -f (Get-Random -Maximum 0xFFFFFF)

(Get-Content $spath) -Replace '(?<=var d1\s=\s).*', "$d1;" -Replace '(?<=var d2\s=\s).*', "$d2;" -Replace '(?<=var d3\s=\s).*', "$d3;" -Replace '(?<=var dIndex\s=\s).*', $dIndex -Replace '(?<=var color1\s=\s).*', "`"$color1`";" -Replace '(?<=color2\s=\s).*', "`"$color2`";"  -Replace '(?<=var color3\s=\s).*', "`"$color3`";" -Replace '(?<=var color4\s=\s).*', "`"$color4`";" -Replace '(?<=var color5\s=\s).*', "`"$color5`";" -Replace '(?<=var color6\s=\s).*', "`"$color6`";" -Replace '(?<=var color7\s=\s).*', "`"$color7`";" -Replace '(?<=var color8\s=\s).*', "`"$color8`";" -Replace '(?<=var color9\s=\s).*', "`"$color9`";" -Replace '(?<=var color10\s=\s).*', "`"$color10`";" | Set-Content $opath$name$i.html
               }

Read-Host -Prompt "Press Enter to exit"
