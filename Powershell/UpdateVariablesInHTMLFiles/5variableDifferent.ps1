$name = "4Fre5h"
$spath = "G:\Path\To\File\template.html"
$opath = "G:\Path\To\Folder\"
$text = "additionalText"


$v = Get-Random -Minimum 350.000 -Maximum 450.009
$d = Get-Random -Minimum 8 -Maximum 14
$dr = [math]::Round($v,$d)
$v1 = Get-Random -Minimum 0.00001 -Maximum 5.00009
$d1 = Get-Random -Minimum 3 -Maximum 14
$dr1 = [math]::Round($v1,$d1)
$color1 = "#{0:X6}" -f (Get-Random -Maximum 0xFFFFFF)
$color2 = "#{0:X6}" -f (Get-Random -Maximum 0xFFFFFF)
$color3 = "#{0:X6}" -f (Get-Random -Maximum 0xFFFFFF)
(Get-Content $spath) -Replace '(?<=var increment\s=\s).*', $dr -Replace '(?<=var STEPS_PER_ROTATION\s=\s).*', $dr1 -Replace '(?<=var c1\s=\s).*', "`"$color1`"" -Replace '(?<=c2\s=\s).*', "`"$color2`""  -Replace '(?<=var c3\s=\s).*', "`"$color3`"" |Set-Content $opath$name"1".html
$v = Get-Random -Minimum 550.000 -Maximum 650.009
$d = Get-Random -Minimum 8 -Maximum 14
$dr = [math]::Round($v,$d)
$v1 = Get-Random -Minimum 0.00001 -Maximum 5.00009
$d1 = Get-Random -Minimum 3 -Maximum 14
$dr1 = [math]::Round($v1,$d1)
$color1 = "#{0:X6}" -f (Get-Random -Maximum 0xFFFFFF)
$color2 = "#{0:X6}" -f (Get-Random -Maximum 0xFFFFFF)
$color3 = "#{0:X6}" -f (Get-Random -Maximum 0xFFFFFF)
(Get-Content $spath) -Replace '(?<=var increment\s=\s).*', $dr -Replace '(?<=var STEPS_PER_ROTATION\s=\s).*', $dr1 -Replace '(?<=var c1\s=\s).*', "`"$color1`"" -Replace '(?<=c2\s=\s).*', "`"$color2`""  -Replace '(?<=var c3\s=\s).*', "`"$color3`"" |Set-Content $opath$name"2".html
$v = Get-Random -Minimum 750.000 -Maximum 850.009
$d = Get-Random -Minimum 8 -Maximum 14
$dr = [math]::Round($v,$d)
$v1 = Get-Random -Minimum 0.00001 -Maximum 5.00009
$d1 = Get-Random -Minimum 3 -Maximum 14
$dr1 = [math]::Round($v1,$d1)
$color1 = "#{0:X6}" -f (Get-Random -Maximum 0xFFFFFF)
$color2 = "#{0:X6}" -f (Get-Random -Maximum 0xFFFFFF)
$color3 = "#{0:X6}" -f (Get-Random -Maximum 0xFFFFFF)
(Get-Content $spath) -Replace '(?<=var increment\s=\s).*', $dr -Replace '(?<=var STEPS_PER_ROTATION\s=\s).*', $dr1 -Replace '(?<=var c1\s=\s).*', "`"$color1`"" -Replace '(?<=c2\s=\s).*', "`"$color2`""  -Replace '(?<=var c3\s=\s).*', "`"$color3`"" |Set-Content $opath$name"3".html
$v = Get-Random -Minimum 950.000 -Maximum 1050.009
$d = Get-Random -Minimum 8 -Maximum 14
$dr = [math]::Round($v,$d)
$v1 = Get-Random -Minimum 0.00001 -Maximum 5.00009
$d1 = Get-Random -Minimum 3 -Maximum 14
$dr1 = [math]::Round($v1,$d1)
$color1 = "#{0:X6}" -f (Get-Random -Maximum 0xFFFFFF)
$color2 = "#{0:X6}" -f (Get-Random -Maximum 0xFFFFFF)
$color3 = "#{0:X6}" -f (Get-Random -Maximum 0xFFFFFF)
(Get-Content $spath) -Replace '(?<=var increment\s=\s).*', $dr -Replace '(?<=var STEPS_PER_ROTATION\s=\s).*', $dr1 -Replace '(?<=var c1\s=\s).*', "`"$color1`"" -Replace '(?<=c2\s=\s).*', "`"$color2`""  -Replace '(?<=var c3\s=\s).*', "`"$color3`"" |Set-Content $opath$name"4".html
$v = Get-Random -Minimum 1150.000 -Maximum 1250.009
$d = Get-Random -Minimum 8 -Maximum 14
$dr = [math]::Round($v,$d)
$v1 = Get-Random -Minimum 0.00001 -Maximum 5.00009
$d1 = Get-Random -Minimum 3 -Maximum 14
$dr1 = [math]::Round($v1,$d1)
$color1 = "#{0:X6}" -f (Get-Random -Maximum 0xFFFFFF)
$color2 = "#{0:X6}" -f (Get-Random -Maximum 0xFFFFFF)
$color3 = "#{0:X6}" -f (Get-Random -Maximum 0xFFFFFF)
(Get-Content $spath) -Replace '(?<=var increment\s=\s).*', $dr -Replace '(?<=var STEPS_PER_ROTATION\s=\s).*', $dr1 -Replace '(?<=var c1\s=\s).*', "`"$color1`"" -Replace '(?<=c2\s=\s).*', "`"$color2`""  -Replace '(?<=var c3\s=\s).*', "`"$color3`"" |Set-Content $opath$name"5".html

Read-Host -Prompt "Press Enter to exit"
