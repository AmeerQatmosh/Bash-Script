# Bash-Script
Homework assignment 2 solution for Cloud Computing course.

**First Script - LinuxStatus:**

To add the script to your Linux PATH, follow these steps:

1. Save the script to a file called LinuxStatus (without any file extension).
2. Make the script executable by running the command chmod +x LinuxStatus.
3. Move the script to a directory in your Linux PATH. For example, you can move it to /usr/local/bin by running the command sudo mv LinuxStatus /usr/local/bin.

After completing these steps, you should be able to run the LinuxStatus command from anywhere in your Linux terminal.


**Second Script - cronJob:**

* To run this script as a cronjob daily at midnight, you can add the following line to your crontab:

   **0 0 * * * /bin/bash /path/to/cronjob.sh**

* Make sure to replace /path/to/cronjob.sh with the actual path to your bash script.


