Function:
Update variables in .html files. Take a base template.html file and point the $spath variable in the script to that file. The variables you specify will be updated 
with whatever range, color, or text you set. If you want to create a project with 100 NFTs you can create one file and then run this script 
to generate 100 projectNameXXX.html files with the variables randomly set. You can also run in small batches for themes within a project 25 of one theme, 10 of another, 
and so on. 

Instructions:
Select the file that meets your requirements. 

Download the file or copy the text into your own .ps1 file.

Open the file to edit it.

Set the $name variable to the name you want the output files to have.

Set the path to the template file in the $spath variable.

Set the output location in the $opath variable.

Each $v variable in the script represents a numeric range variable that will be modified in the HTML output documents. Set the min/max values to meet your needs.
In the script template Get-Ramdom is used to pull a number from a range. This can be changed to text instead by setting $v = "Your Text here".
Using Get-Random with numbers that have decimals will output a range with decimals. Using whole numbers will output whole numbers.
$d can be used to set the amount of decimal points. The $additionalText variable in the script is optional.
If one of your $v variables needs more text after it you can use $text.
In the below example the ouput file for var increment would read var increment = 363.9836456/steps_per_rotation.
$v = Get-Random -Minimum 350.001 -Maximum 450.009
$text = "/steps_per_rotation"
(Get-Content $spath) -Replace '(?<=var increment\s=\s).*', "$v$text" |Set-Content $opath$name"1".html
In the 5variable scripts there is a color variable already setup. If you want to add or change a variable on the 1 or 2 variable scripts you can copy from here:
$color1 = "#{0:X6}" -f (Get-Random -Maximum 0xFFFFFF) or from the 5variable scripts.

In the script template file after -Replace is the variable in your code you want updated. If you use var for variables in your code just change the next word to your variable name. If you use const for variables change var to const in the script as well. Leave all the other characters as is.

The script is setup to generate 5 new files.
If you want to create more or less than five and you are using the version labelled "Same" change the number in the for loop after -le.
If you are using the version labelled different either remove lines or copy lines and paste as many times until you reach the desired output count.
Then update the last number before .html on all the new lines of code.

Once everything is configured save the changes.

Right click the .ps1 script file and select Run with Powershell.

The new files should now be in the output directory.

Notes:
I left extra variables created at the top of a couple of the .ps1 files that are not used in the code that runs. I did that so people can see different types of options that are available. Any variable can swapped out or updated to suit your purpose.

