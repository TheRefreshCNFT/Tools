$name = "4Fre5h"
$count = 5
$spath = "G:\Path\To\File\template.html"
$opath = "G:\Path\To\Folder\"
$text = "additionalText"

For ($i=1; $i -le $count; $i++) {
$v = Get-Random -Minimum 350.001 -Maximum 450.009
$d = Get-Random -Minimum 8 -Maximum 14
$dr = [math]::Round($v,$d)
(Get-Content $spath) -Replace '(?<=var increment\s=\s).*', $dr |Set-Content $opath$name$i.html
               }

Read-Host -Prompt "Press Enter to exit"
