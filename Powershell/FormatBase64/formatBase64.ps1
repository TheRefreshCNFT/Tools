$fileName = "projectName"
$count = 5
$spath = "G:\Path\To\Source\Files\"
$opath = "G:\Path\To\Final\Output\Files\"


For ($i=1; $i -le $count; $i++) {
(gc "$spath\$fileName ($i).txt") -replace ".{64}" , "$&`r`n" | sc "$spath\$fileName$i-1.txt"
(gc "$spath\$fileName$i-1.txt").ForEach({ '"{0}",' -f $_ }) | sc "$spath\$fileName$i-2.txt"
Remove-Item "$spath\$fileName$i-1.txt"

$replaceword = ","
$somefile = "$spath\$fileName$i-2.txt"
(Get-content -raw $somefile) -replace "([\s\S]*)$replaceword\s+([\s\S]*$)",'$1$2' > "$opath\$fileName$i.txt"
Remove-Item "$spath\$fileName$i-2.txt"
}
Read-Host -Prompt "Press Enter to exit"
