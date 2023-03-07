#!/bin/bash

# Display the welcome screen
echo "Welcome to LinuxStatus"
echo "Current date: $(date)"
echo "Current user: $(whoami)"
echo "Linux version: $(uname -r)"
echo ""

# Define function to display the main menu
function show_menu() {
  echo "Select an option:"
  echo "1. List running processes"
  echo "2. Check memory status and free memory in RAM"
  echo "3. Check hard disk status and free memory in HDD"
  echo "4. Check if Apache is installed and return its version"
  echo "5. Exit"
  echo ""
}

# Define function to list running processes
function list_processes() {
  ps aux
}

# Define function to check memory status and free memory in RAM
function check_memory() {
  free -m
}

# Define function to check hard disk status and free memory in HDD
function check_hard_disk() {
  df -h
}

# Define function to check if Apache is installed and return its version
function check_apache() {
  if command -v apache2 >/dev/null 2>&1; then
    apache2 -v
  else
    echo "Apache is not installed"
  fi
}

# Parse command line arguments
while getopts "prha" opt; do
  case $opt in
    p)
      list_processes
      exit
      ;;
    r)
      check_memory
      exit
      ;;
    h)
      check_hard_disk
      exit
      ;;
    a)
      check_apache
      exit
      ;;
    *)
      show_menu
      exit
      ;;
  esac
done

# Display the main menu
show_menu

# Read user input
read -p "Enter your choice: " choice
echo ""

# Handle user input
case $choice in
  1)
    list_processes
    ;;
  2)
    check_memory
    ;;
  3)
    check_hard_disk
    ;;
  4)
    check_apache
    ;;
  5)
    exit
    ;;
  *)
    echo "Invalid choice"
    ;;
esac

# Display the options menu
echo ""
echo "Select an option:"
echo "1. Back to main menu"
echo "2. Update the view"
echo "3. Exit"

# Read user input
read -p "Enter your choice: " choice
echo ""

# Handle user input
case $choice in
  1)
    show_menu
    ;;
  2)
    clear
    show_menu
    ;;
  3)
    exit
    ;;
  *)
    echo "Invalid choice"
    ;;
esac
