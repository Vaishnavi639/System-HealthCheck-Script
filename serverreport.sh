#!/bin/bash
################################################################################################################################################################################################

#Author:- Vaishnavi Pangare
#Date :- 2|1|2025
#Version :- v1
#################################################################################################################################################################################################

#This Shel Script is writing for creating a menu based server reporting system which monitors :
#1. Disk Usage
#2. Running services
#3. Memory usage
#4. CPU usage
#5. Creates a report
# Also send this report to a specific set mail each day at 9am

##################################################################################################################################################################################################

# Define the directory for report creation
REPORT_DIR="/home/vaishnavi/Desktop/system-report"
mkdir -p "$REPORT_DIR" # Ensure the directory exists

# Display menu options
while true; do
  echo "System Health Check Menu"
  echo "1. Check Disk Usage"
  echo "2. Monitor Running Services"
  echo "3. Assess Memory Usage"
  echo "4. Evaluate CPU Usage"
  echo "5. Generate and Save Comprehensive Report"
  echo "6. Exit"
  read -p "Enter your choice: " choice

  case $choice in
    1)
      echo "Disk Usage:"
      df -h
      ;;
    2)
      echo "Running Services:"
      systemctl list-units --type=service --state=running
      ;;
    3)
      echo "Memory Usage:"
      free -h
      ;;
    4)
      echo "CPU Usage:"
      top -bn1 | grep "Cpu(s)"
      ;;
    5)
      # Generate a detailed report
      REPORT_FILE="$REPORT_DIR/health_report_$(date '+%Y%m%d_%H%M%S').txt"
      {
        echo "Disk Usage:"
        df -h
        echo
        echo "Memory Usage:"
        free -h
        echo
        echo "Running Services:"
        systemctl list-units --type=service --state=running
        echo
        echo "CPU Usage:"
        top -bn1 | grep "Cpu(s)"
      } > "$REPORT_FILE"
      echo "Report saved to: $REPORT_FILE"
      ;;
    6)
      echo "Exiting..."
      break
      ;;
    *)
      echo "Invalid choice. Please try again."
      ;;
  esac
  echo
done

