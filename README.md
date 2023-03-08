# Bash-Script 
Homework assignment 2 solution for Cloud Computing course, Contains Implementation of Two Scripts, LinuxStatus script and cronJob script.

## **First Script - LinuxStatus:**

**To create a bash script in Linux:**

**Step 1:** Open Terminal and run this command: `touch LinuxStatus.sh`.

**Step 2:** Open and edit the Script file by run this command: `sudo nano LinuxStatus.sh`.

**Step 3:** Write the Script as in this file: **[LinuxStatus.sh](https://github.com/AmeerQatmosh/Bash-Script/blob/main/LinuxStatus.sh)**

**Step 4:** to test the script run this command: `bash LinuxStatus.sh`.

![image](https://user-images.githubusercontent.com/68341128/223591268-d69aef20-f365-4b70-8bce-299d022612a7.png)


### To add the script to your Linux PATH, follow these steps:

1. Save the script to a file called LinuxStatus (without any file extension).
2. Make the script executable by running the command chmod +x LinuxStatus.
3. Move the script to a directory in your Linux PATH. For example, you can move it to /usr/local/bin by running the command sudo mv LinuxStatus /usr/local/bin.

After completing these steps, you should be able to run the LinuxStatus command from anywhere in your Linux terminal.


## **Second Script - cronJob:**

**To create a bash script in Linux:**

**Step 1:** Open Terminal and run this command: `touch cronJob.sh`.

**Step 2:** Open and edit the Script file by run this command: `sudo nano cronJob.sh`.

**Step 3:** Write the Script as in this file: **[cronJob.sh](https://github.com/AmeerQatmosh/Bash-Script/blob/main/cronJob.sh)**

**Step 4:** to test the script run this command: `bash cronJob.sh`.

![image](https://user-images.githubusercontent.com/68341128/223587537-937e725d-014b-42c1-a923-97a2e23c8cca.png)


### To run this script as a cronjob daily at midnight, do the following Steps:

1. Ensure that curl packege is installed, if it's not, install it be running this command: `sudo apt-get install curl`, but it recommended first to run this command `sudo apt-get update`.

2. Run this command: `sudo crontab -e`
![image](https://user-images.githubusercontent.com/68341128/223590527-9de016cd-7a34-4a93-bbc9-c253dad083b0.png)
3. Add this line to the end of the file: **`0 0 * * * /bin/bash /path/to/cronjob.sh`** and make sure to give the right path for cronJob.sh file:
* Make sure to replace /path/to/cronjob.sh with the actual path to your bash script.

![image](https://user-images.githubusercontent.com/68341128/223590196-bfcb3442-18d0-4fab-99a0-1e60aed54296.png)




