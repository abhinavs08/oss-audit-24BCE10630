# Open Source Software Audit: Git

**Student Name:** Abhinav Singh
**Registration Number:** 24BCE10630
**Software Chosen:** Git

## Overview
This repository contains five Bash shell scripts developed as part of the OSS Capstone Project. The scripts demonstrate practical Linux automation, package management, and system auditing, reflecting the open-source philosophy.

## Dependencies
All scripts are designed to run on a standard Linux environment (Ubuntu/Debian preferred). 
* `Script 2` utilizes `dpkg-query` which is standard on Debian-based systems.
* No external third-party libraries are required.

## Scripts Description & Execution Instructions
Before running any script, ensure you grant it execution permissions using: 
`chmod +x <script_name.sh>`

### Script 1: System Identity Report (`script1_sysinfo.sh`)
* **Description:** Displays the OS kernel, user details, uptime, and the licensing philosophy of the environment.
* **Run:** `./script1_sysinfo.sh`

### Script 2: FOSS Package Inspector (`script2_pkgcheck.sh`)
* **Description:** Checks if essential FOSS tools (like Git, Apache, MySQL) are installed and prints a short philosophy note based on a case statement.
* **Run:** `./script2_pkgcheck.sh`

### Script 3: Disk and Permission Auditor (`script3_diskaudit.sh`)
* **Description:** Loops through critical system directories to check permissions, owners, and sizes.
* **Run:** `./script3_diskaudit.sh`

### Script 4: Log File Analyzer (`script4_logparse.sh`)
* **Description:** Reads through a log file to count the occurrences of a specific keyword (default is "error").
* **Run:** `./script4_logparse.sh <path_to_log_file> [keyword]`

### Script 5: Open Source Manifesto Generator (`script5_manifesto.sh`)
* **Description:** An interactive script that asks three questions and generates a personalized text file stating your FOSS philosophy.
* **Run:** `./script5_manifesto.sh`
