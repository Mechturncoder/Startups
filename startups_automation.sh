#!/bin/bash

# Define the log file
LOG_FILE="output.txt"

# Clean up any existing log file
echo "Starting the Hive script execution..." > $LOG_FILE

# Check if the Hive script file exists
if [ ! -f "ListOfStartup.hive" ]; then
  echo "Error: Hive script file (ListOfStartup.hive) not found!" >> $LOG_FILE
  exit 1
fi

# Start Hive execution
hive -f ListOfStartup.hive >> $LOG_FILE 2>&1

# Check if the Hive command was successful
if [ $? -eq 0 ]; then
  echo "Hive script executed successfully." >> $LOG_FILE
else
  echo "Error occurred during Hive script execution." >> $LOG_FILE
  exit 1
fi

