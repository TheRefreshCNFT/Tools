Select the file that meets your requirements. 

Download the file or copy the text into your own .ps1 file.

Open the file to edit it.

Set the $name variable to the name you want the output files to have.

Set the path to the template file in the $spath variable.

Set the output location in the $opath variable.

Each $v variable in the script represents a variable that will be modified in the HTML output documents. Set the value to meet your needs.
In the script template Get-Ramdom is used to pull a number from a range. This can be changed to text instead by setting $v = "Your Text here".
Using Get-Random with numbers that have decimals will output a range with decimals. Whole numbers will output whole numbers.
$d can be used to set the amount of decimal points. The $additionalText variable in the script is optional.
If one of your $v variables needs more text after it you can use $additionalText.
In the below example the ouput file for var increment would read var increment = 363.9836456/steps_per_rotation.
$v = Get-Random -Minimum 350.001 -Maximum 450.009
$text = "/steps_per_rotation"
(Get-Content $spath) -Replace '(?<=var increment\s=\s).*', "$v$text" |Set-Content $opath$name"1".html

In the script after -Replace is the variable in your code you want updated. If you use var for variables in your code just change the next word to your variable name.
If you use const for variables change var to const in the script as well. Leave all the other characters as is.

The script is setup to generate 5 new files.
If you want to create more or less than five and you are using the version labelled "Same" change the number in the for loop after -le.
If you are using the version labelled different either remove lines or copy lines and paste as many times until you reach the desired output count.
Then update the last number before .html on all the new lines of code.

Once everything configured save the changes.

Right click the file script file and select Run with Powershell.

The new files should now be in the output directory.

