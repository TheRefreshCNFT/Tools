Function:
Some minters/minting platforms will require the Base64 content as a string and some will require it json formatted with quotes and commas. 
This tool will json format Base64 .txt files.

Instructions:
Before running the tool one step needs to be done:
After using the Base64Convert.html tool from the TheRefreshCNFT Tools repository you have a directory with files something like this:

projectName.txt
projectName (1).txt
projectName (2).txt
projectName (3).txt
projectName (4).txt

Rename the "projectName.txt" file to the last number in your count. In the example above you would rename "projectName.txt" to "projectName (5).txt."

With that step completed the Base64 Format tool can be setup.

Download the formatBase64.ps1 file or copy the text to your own .ps1 file.

Open the file to edit it.

Set the $fileName variable to the projectName.

Set the $count variable to the total number of files, which should also be the number of your last file, in this example that's 5.

Set the $spath variable to the location of the source files.

Set the $opath variable to the location you want to save the new files.

Save the changes.

Right click the formatBase64.ps1 and select Run with Powershell.

The formatted Base64 files should now be in the $opath location.

