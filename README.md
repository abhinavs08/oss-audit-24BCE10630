# OSS Audit — Git
**Open Source Software Capstone Project | VITyarthi**

---

## Student Information
| Field | Details |
| :--- | :--- |
| **Student Name** | Abhinav Singh |
| **Registration Number** | 24BCE10630 |
| **Chosen Software** | Git |
| **License of Software** | GNU General Public License v2 (GPL v2) |
| **Course** | Open Source Software (OSS NGMC) |

---

## About This Project
This repository serves as the complete technical submission for the Open Source Audit capstone project. The chosen open-source software is **Git** — the distributed version control system created by Linus Torvalds in 2005. 

Git was selected because its origin story perfectly encapsulates the necessity of software freedom: it was built in a matter of days as a direct response to a proprietary company revoking free access to their version control tool. Today, it stands as the absolute backbone of global software engineering.

This repository contains five Bash shell scripts demonstrating practical Linux automation and system auditing, complementing the written project report.

---

## Repository Structure
```text
oss-audit-24BCE10630/
│
├── README.md                  ← This file (Project documentation)
│
├── script1_sysinfo.sh         ← System Identity Report
├── script2_pkgcheck.sh        ← FOSS Package Inspector
├── script3_diskaudit.sh       ← Disk & Permission Auditor
├── script4_logparse.sh        ← Log File Analyzer
└── script5_manifesto.sh       ← Open Source Manifesto Generator
```

---

## Script Descriptions

### Script 1 — System Identity Report
* **File:** `script1_sysinfo.sh`
* **Description:** Displays a formatted welcome screen showing the current Linux distribution, kernel version, logged-in user, system uptime, and a note on the GPL v2 license covering the OS kernel.
* **Shell Concepts:** Variables, command substitution `$()`, `echo` formatting, `grep`, `cut`.

### Script 2 — FOSS Package Inspector
* **File:** `script2_pkgcheck.sh`
* **Description:** Iterates through an array of standard FOSS packages (including `git`, `apache2`, `mysql-server`, and `firefox`) to check their installation status and version using Debian package management commands. Outputs a philosophical note for each via a case statement.
* **Shell Concepts:** Arrays, `for` loops, `if-then-else`, `case` statements, `dpkg-query`, output redirection `2>/dev/null`.

### Script 3 — Disk and Permission Auditor
* **File:** `script3_diskaudit.sh`
* **Description:** Audits critical system directories (`/etc`, `/var/log`, `/home`, etc.) and the user's local Git configuration path. Verifies directory existence, extracts read/write/execute permissions, and calculates total disk footprint.
* **Shell Concepts:** Array iteration, directory testing `[ -d ]`, `ls -ld`, `awk`, `du -sh`, `cut`.

### Script 4 — Log File Analyzer
* **File:** `script4_logparse.sh`
* **Description:** Scans a user-provided log file line-by-line to count occurrences of a specific keyword (defaults to "error"). If matches are found, it previews the last 5 occurrences. Includes argument validation and file existence checks.
* **Shell Concepts:** Command-line arguments (`$1`, `$2`), default parameter assignment, `while read` loop, `grep -iq`, counter variables.

### Script 5 — Open Source Manifesto Generator
* **File:** `script5_manifesto.sh`
* **Description:** An interactive script that prompts the user with three questions regarding their views on software freedom. It dynamically concatenates the answers into a cohesive paragraph and writes the manifesto to a personalized `.txt` file. 
* **Shell Concepts:** Interactive `read -p`, string concatenation, output redirection (`>` and `>>`), `date` command.

---

## How to Run the Scripts

### Prerequisites
* A Linux environment (Physical, VM, WSL, or Cloud Shell).
* Bash shell environment.
* `dpkg` package manager (standard on Debian/Ubuntu systems).

### Step 1 — Clone the Repository
```bash
git clone https://github.com/abhinavs08/oss-audit-24BCE10630.git
cd oss-audit-24BCE10630
```

### Step 2 — Grant Execution Permissions
Before running the scripts, make them executable:
```bash
chmod +x *.sh
```

### Step 3 — Execution Commands
Run each script directly from the terminal:

**1. System Identity:**
```bash
./script1_sysinfo.sh
```

**2. Package Inspector:**
```bash
./script2_pkgcheck.sh
```

**3. Disk Auditor:**
```bash
./script3_diskaudit.sh
```

**4. Log Analyzer:**
*(Requires a readable text or log file. A sample log file must be provided as the first argument).*
```bash
./script4_logparse.sh sample_log.txt "error"
```

**5. Manifesto Generator:**
```bash
./script5_manifesto.sh
```

---

## Tested Environment
All scripts were successfully developed, executed, and tested on:
* **OS:** Ubuntu 24.04.4 LTS (via Google Cloud Shell)
* **Kernel:** 6.6.123+
* **Shell:** GNU Bash

---

## Academic Integrity & License
All written content in the accompanying project report is original work. The shell scripts were written, tested, and documented by the student.

The scripts within this repository are released under the **MIT License**, honoring the spirit of the open-source values explored in this course.

```text
MIT License — Copyright (c) 2026 Abhinav Singh

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.
```
