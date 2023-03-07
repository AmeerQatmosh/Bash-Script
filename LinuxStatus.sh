#!/bin/bash

# Define functions

# Define function to display the welcome screen and the main menu.
function show_menu() {
  echo "---------------------------------------------------------------------"
  echo "Welcome to LinuxStatus"
  echo "Current Date: $(date)"
  echo "Current User: $(whoami)"
  echo "Linux Version: $(uname -r)"
  echo ""
  echo "Select an option from the following list:"
  echo "1. List the running process."
  echo "2. Check the memory status and free memory in the RAM."
  echo "3. Check the hard disk status and free memory in the HDD."
  echo "4. Check if Apache is installed and if yes return its version."
  echo "5. Exit."
  echo "---------------------------------------------------------------------"
  echo ""
}

# Define function to hundle user input.
function process_menu_choice() {
  case $1 in
    1) show_running_process ;;
    2) check_memory_status ;;
    3) check_hard_disk_status ;;
    4) check_apache_version ;;
    5) exit 0 ;;
    *) echo "Invalid choice. Try again." ;;
  esac
}

# Define function to list running processes.
function show_running_process() {
  echo ""
  echo "Running processes List:"
  echo ""
  ps aux
  show_options
  echo ""
}

# Define function to check memory status and free memory in RAM.
function check_memory_status() {
  echo ""
  echo "Memory status:"
  echo ""
  free -m
  show_options
  echo ""
}

# Define function to check hard disk status and free memory in HDD.
function check_hard_disk_status() {
  echo ""
  echo "Hard disk status:"
  echo ""
  df -h
  show_options
  echo ""
}

# Define function to check if Apache is installed and if yes return its version.
function check_apache_version() {
  if command -v apache2 >/dev/null 2>&1; then
    apache2 -v
    echo ""
  else
    echo "Warning: Apache is not installed!"
    echo ""
  fi
  show_options
  echo ""
}

function show_options() {
  echo ""
  echo "---------------------------------------------------------------------"
  echo "Please select an option:"
  echo "1. Back to the main menu."
  echo "2. Update the view."
  echo "3. Exit."
  echo "---------------------------------------------------------------------"
  echo ""
  read -p "Enter option number: " choice
  process_options_choice $choice
}

function process_options_choice() {
  case $1 in
    1) show_menu ;;
    2) clear ;
       echo ""
       echo "****************** The view is successfullly Updated! ******************" ;
       echo ""
       echo ""
       show_menu ;
       show_options ;;
    3) exit 0 ;;
    *) echo "Invalid choice. Please try again." ; show_options ;;
  esac
}

# Define the Main function
function main() {
  if [ $# -eq 0 ]; then
    show_menu
    while true; do
      #show_menu
      read -p "Enter option number: " choice
      process_menu_choice $choice
    done
  else
    for arg in "$@"; do
      case $arg in
        p) show_running_process ;;
        r) check_memory_status ;;
        h) check_hard_disk_status ;;
        a) check_apache_version ;;
        *) echo "Invalid argument. Please try again." ; exit 1 ;;
      esac
    done
  fi
}

# Call main function
main "$@"
