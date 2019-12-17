# TS3-AutoBackup-Windows
Simple Program To Backup your TeamSpeak Server on Windows (Works in Windows 10 and Server)

*Note: Only use this on the Windows PC/Server that is running your TS3 Server.*

## Instaliation

Step 1: Create Your Backup Folder Wherever You Like (Ensure you do not have spaces in your folder name for simplicity)
* Example: C:\User\Username\Dropbox\TS3_Backup

Step 2: Download "AutoHotkey" from https://autohotkey.com/ and install 
* We will use this to convert the .ahk file to an .exe program

Step 3: Open each file in Notepad++ or whatever text editing software you use and replace the following inserts (The script wont work if you dont)
* **Auto Backup.ahk**
	* [INSERT BACKUP DIRECTORY HERE] (x2)
	* [INSERT SERVERADMIN PASSWORD]
* **BatchBackup.bat**
	* [INSERT BACKUP DIRECTORY HERE]
* **Copy.bat**
	* [INSERT TEAMSPEAK SERVER DIRECTORY] (x2)
	* [INSERT BACKUP DIRECTORY HERE]
* Notes:
	* Don't Put Anything in Brackets
	* Again, the script wont work if you don't replace these inserts with your information
	
Step 4: Test the script by double-clicking the **Auto Backup.ahk** file. It should shutdown the server, copy the .sqlitedb file to a folder with today's date, and start the server back up.

Step 5: Navigate to your AutoHotkey install directory and locate the "Compiler" folder. In it is the program "Ahk2Exe.exe". 
* Once you find it, run the program and fill in the just the first two boxes.
	* Source will be the **Auto Backup.ahk** file
	* Destination will be your Backup Folder. You can name the .exe anything you want. (Ex: "Backup.exe")
	
Step 6: Open the start menu (or press Win+S) and type in "Task Scheduler" and run it.

Step 7: On the right bar click on "Create Basic Task". Name is whatever you want, have it trigger at the time you want and as often as you want, finally point it to the .exe we made earlier. (Ex: Backup.exe) After that you are finished. Windows will run the program on its own at this point.
