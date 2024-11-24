# Hive Automation and Queries

This repository contains two main components:

1. **Hive Query Script**: This script contains a set of queries to load data into Hive tables, analyze startup data, and perform different aggregations.
2. **Automation Shell Script**: This script automates the process of running the Hive queries and handles errors. It stores the output of each query in a text file in the current working directory.

## Prerequisites

Before using these scripts, ensure the following prerequisites are met:

- **Apache Hive** is installed and running on your system.
- **Hadoop** (HDFS) is set up and accessible.
- **Hive Metastore** is running.
- Your data files (e.g., `Listofstartups.csv`) are available in the correct location on your system.

### Hive Setup
Ensure that your Hive configuration is properly set up, including:
- `hive-site.xml` file with correct settings for metastore URIs and HDFS paths.
- Ensure the Hive warehouse directory is accessible.

## Files

### 1. `automation.sh`

This script automates the process of:
- Running the Hive query script.
- Logging the output of each query into separate text files.
- Handling common errors during execution.

### 2. `hive_queries.hql`

This file contains the following queries:
- **Loading data into Hive**: Create tables, load data from CSV files into Hive tables, and insert data into external tables.
- **Data Analysis Queries**: Queries to get the maximum number of startups from a sector, count of startups by state, count of startups from Maharashtra, and the number of startups in healthcare.

## Usage

### Step 1: Prepare Your Environment
Ensure the following:
- Place your `Listofstartups.csv` file in the appropriate directory on the local file system.
- Update the paths to the CSV files in the Hive query script, if necessary.
- Set up your Hive Metastore and HDFS configuration.

### Step 2: Upload Files to GitHub
1. Clone this repository to your local machine:
   ```bash
   git clone https://github.com/yourusername/hive-automation.git
