# Bash-Script 
Homework assignment 2 solution for Cloud Computing course, Contains Implementation of Two Scripts, LinuxStatus script and cronJob script.

## **First Script - LinuxStatus:**

**To create a bash script in Linux:**

**Step 1:** Open Terminal and run this command: `touch LinuxStatus`.

**Step 2:** Open and edit the Script file by run this command: `sudo nano LinuxStatus`.

**Step 3:** Write the Script as in this file: **[LinuxStatus.sh](https://github.com/AmeerQatmosh/Bash-Script/blob/main/LinuxStatus.sh)**

**Step 4:** to test the script run this command: `LinuxStatus`.

![image](https://user-images.githubusercontent.com/68341128/223599596-96b6822f-c4d9-4884-83ce-0df7632c35cd.png)


### To add the script to your Linux PATH, follow these steps:

1. Use the `ls` command to verify that the script is in the directory.
2. Use the `echo $PATH` to see the directories that are in the PATH.
3. Copy script to one of the directories in the PATH. For example, using this command `sudo cp LinuxStatus.sh /usr/local/bin` to copy the script to the `/usr/local/bin` directory.
4. Run this command: `sudo mv LinuxStatus /usr/local/bin`
5. Make sure that the script executable by running the command `sudo chmod +x /usr/local/bin/LinuxStatus` or `sudo chmod 700 /usr/local/bin/LinuxStatus` This will allow to run the script from anywhere on your system.
6. Verify that the script is now in the PATH by running the command `which LinuxStatus` This should output the full path of the script.

![image](https://user-images.githubusercontent.com/68341128/223600135-c1a7248f-9dee-4872-9e77-fe0d0fde363c.png)

7. After this you can run the script in anywhare in terminal, and with an any options, 
For Example: run these commands:

`LinuxStatus p` for option 1.

`LinuxStatus r` for option 2.

`LinuxStatus h` for option 3.

`LinuxStatus a` for option 4.

Mix options for example `LinuxStatus p r c ` for option 1,2,4.


After completing these steps, you should be able to run the LinuxStatus command from anywhere in your Linux terminal.


## **Second Script - cronJob:**

**To create a bash script in Linux:**

**Step 1:** Open Terminal and run this command: `touch cronJob.sh`.

**Step 2:** Open and edit the Script file by run this command: `sudo nano cronJob.sh`.

**Step 3:** Write the Script as in this file: **[cronJob.sh](https://github.com/AmeerQatmosh/Bash-Script/blob/main/cronJob.sh)**

**Step 4:** to test the script run this command: `bash cronJob.sh`.

![image](https://user-images.githubusercontent.com/68341128/223587537-937e725d-014b-42c1-a923-97a2e23c8cca.png)


### To run this script as a cronjob daily at midnight, do the following Steps:

1. Make sure that curl packege is installed, if it's not, install it be running this command: `sudo apt-get install curl`, but it recommended first to run this command `sudo apt-get update`.

2. Run this command: `sudo crontab -e`

![image](https://user-images.githubusercontent.com/68341128/223590527-9de016cd-7a34-4a93-bbc9-c253dad083b0.png)

3. Add this line to the end of the file: **`0 0 * * * /bin/bash /path/to/cronjob.sh`** and make sure to give the right path for cronJob.sh file:
* Make sure to replace /path/to/cronjob.sh with the actual path to your bash script.

![image](https://user-images.githubusercontent.com/68341128/223590196-bfcb3442-18d0-4fab-99a0-1e60aed54296.png)




