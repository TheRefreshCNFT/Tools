$name = "4Fre5h"
$zero = "00"

$range = Get-Random -Minimum 350.001 -Maximum 450.009
$range1 = Get-Random -Minimum 0 -Maximum 15000

(Get-Content .\template.html) -Replace '(?<=var increment\s=\s).*', $range -Replace '(?<=var STEPS_PER_ROTATION\s=\s).*', $range1 |Set-Content .\$name$zero"1".html
$range = Get-Random -Minimum 350.001 -Maximum 450.009
$range1 = Get-Random -Minimum 0 -Maximum 15000
(Get-Content .\template.html) -Replace '(?<=var increment\s=\s).*', $range -Replace '(?<=var STEPS_PER_ROTATION\s=\s).*', $range1 |Set-Content .\$name$zero"2".html
$range = Get-Random -Minimum 350.001 -Maximum 450.009
$range1 = Get-Random -Minimum 0 -Maximum 15000
(Get-Content .\template.html) -Replace '(?<=var increment\s=\s).*', $range -Replace '(?<=var STEPS_PER_ROTATION\s=\s).*', $range1 |Set-Content .\$name$zero"3".html
$range = Get-Random -Minimum 350.001 -Maximum 450.009
$range1 = Get-Random -Minimum 0 -Maximum 15000
(Get-Content .\template.html) -Replace '(?<=var increment\s=\s).*', $range -Replace '(?<=var STEPS_PER_ROTATION\s=\s).*', $range1 |Set-Content .\$name$zero"4".html
$range = Get-Random -Minimum 350.001 -Maximum 450.009
$range1 = Get-Random -Minimum 0 -Maximum 15000
(Get-Content .\template.html) -Replace '(?<=var increment\s=\s).*', $range -Replace '(?<=var STEPS_PER_ROTATION\s=\s).*', $range1 |Set-Content .\$name$zero"5".html