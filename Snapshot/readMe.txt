1. Save runPY.ps1 and snap.py in the same directory.

2. Check RequiredInstalls.txt and install the requirements.

3. Create a free Blockfrost account: https://blockfrost.io/

4. Add a project on Blofrost from the Dashboard: https://blockfrost.io/dashboard

5. Open the snap.py file with any text editor. Change line 5 project_id='YOUR PROJECT ID HERE',
by adding your project ID from blockfrost between the single quotes.

6. Also in the snap.py file change line 18 policy_id = 'POLICY ID TO SNAP HERE',
add the policy ID you want to get the addresses for between the single quotes.

7. Save the file.

8. Make sure you saved runPY.ps1 in the same folder as snap.py.

9. Right click runPY.ps1 and select Run with PowerShell.

10. Wait for the magic to happen. If you keep Blockfrost open you'll start to see the count appear.
It doesn't take long to run but the bigger the collection the longer it will take. Once complete an
addresses.xlsx file will be created in the same directory as the script files.

