#!/bin/bash

# create log file with current date
LOGFILE="install_$(date +%F).log"
touch $LOGFILE

# update the package list and install apache2 if not installed
sudo apt-get update
if ! which apache2 > /dev/null; then
    echo "Installing apache2..."
    sudo apt-get -y install apache2 &>> $LOGFILE
fi

# check the apache2 version and update if necessary
CURRENT_VERSION=$(apache2 -v | awk -F'[ /]' 'NR==1 {print $4}')
if [[ $CURRENT_VERSION < "2.0" ]]; then
    echo "Removing old version of apache2..."
    sudo apt-get -y remove apache2 &>> $LOGFILE
    echo "Installing the latest version of apache2..."
    sudo apt-get -y install apache2 &>> $LOGFILE
fi

# download website code from GitHub
echo "Downloading website code from GitHub..."
git clone https://github.com/mkassaf/SimpleApacheApp.git &>> $LOGFILE

# move website pages to /var/www/SimpleApp
echo "Moving website pages to /var/www/SimpleApp..."
sudo mkdir -p /var/www/SimpleApp
sudo cp -r SimpleApacheApp/App/* /var/www/SimpleApp &>> $LOGFILE

# move simpleApp.conf to /etc/apache2/sites-available
echo "Moving simpleApp.conf to /etc/apache2/sites-available..."
sudo cp SimpleApacheApp/simpleApp.conf /etc/apache2/sites-available/ &>> $LOGFILE

# disable default apache config and enable new config
echo "Disabling default apache config and enabling new config..."
sudo a2dissite 000-default &>> $LOGFILE
sudo a2ensite simpleApp &>> $LOGFILE

# restart apache2 service
echo "Restarting apache2 service..."
sudo systemctl restart apache2 &>> $LOGFILE

# verify website is working
echo "Verifying website is working..."
STATUS_CODE=$(curl -sL -w "%{http_code}" "http://localhost" -o /dev/null)
if [[ $STATUS_CODE -eq 200 ]]; then
    echo "Website is working as expected."
else
    echo "Website is not working as expected. Status code: $STATUS_CODE"
fi

# log all steps and store logs in log file
echo "Script execution completed." | tee -a $LOGFILE
