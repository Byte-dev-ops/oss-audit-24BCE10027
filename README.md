# 🐧 The Open Source Audit — Git

## 👨‍🎓 Student Details

* **Name:** Mukul
* **Registration Number:** 24BCE10027
* **Course:** Open Source Software (OSS NGMC)
* **University:** VIT Bhopal University

---

## 🛠️ Software Audited

* **Software:** Git
* **Category:** Distributed Version Control System
* **License:** GNU General Public License v2 (GPLv2)

---

## 📖 Project Description

This repository contains my capstone project for the Open Source Software course.

For this audit, I chose **Git**, a distributed version control system that powers modern software development. Although I use Git regularly, this project helped me understand its deeper purpose, origin, and the philosophy behind open-source collaboration.

Git is a great example of how a tool created to solve a personal problem evolved into a global standard used by developers worldwide.

This repository includes five shell scripts that demonstrate Linux concepts and practical interaction with open-source systems.

---

## 📂 Repository Structure

```
oss-audit-24BAI10284/
├── README.md
├── Project_Report.pdf
├── scripts/
│   ├── 01_system_identity.sh
│   ├── 02_package_inspector.sh
│   ├── 03_disk_auditor.sh
│   ├── 04_log_analyzer.sh
│   └── 05_manifesto_generator.sh
└── screenshots/
    ├── script1.png
    ├── script2.png
    ├── script3.png
    ├── script4.png
    └── script5.png
```

---

## 🧾 Shell Scripts Overview

| Script                        | Description                                                        | Concepts Used                         |
| ----------------------------- | ------------------------------------------------------------------ | ------------------------------------- |
| **01_system_identity.sh**     | Displays system info like kernel, distro, uptime, and license note | Variables, command substitution, echo |
| **02_package_inspector.sh**   | Checks if Git is installed and shows version + details             | if-else, case, grep, dpkg             |
| **03_disk_auditor.sh**        | Audits system directories for size and permissions                 | for loop, awk, cut                    |
| **04_log_analyzer.sh**        | Scans log files for keywords like "error" and counts occurrences   | while-read loop, arguments, counters  |
| **05_manifesto_generator.sh** | Generates a personalized open-source manifesto                     | read input, file writing, date        |

---

## 🚀 How to Run the Scripts

### Step 1: Make Scripts Executable

```bash
chmod +x scripts/*.sh
```

### Step 2: Run Scripts

#### ▶️ Script 1, 2, 3, 5

```bash
./scripts/01_system_identity.sh
./scripts/02_package_inspector.sh
./scripts/03_disk_auditor.sh
./scripts/05_manifesto_generator.sh
```

#### ▶️ Script 4 (Log Analyzer)

```bash
# Default keyword = "error"
./scripts/04_log_analyzer.sh /var/log/syslog

# Custom keyword
./scripts/04_log_analyzer.sh /var/log/syslog fail
```

---

## 💻 Requirements

* Linux-based OS (Tested on Ubuntu)
* Bash shell
* Git installed
* Standard Linux utilities:

  * `awk`
  * `grep`
  * `cut`
  * `dpkg`

Install Git (if not installed):

```bash
sudo apt update
sudo apt install git
```

---

## 📋 Sample Output

Example output of `01_system_identity.sh`:

```
========================================
 Open Source Audit — Mausam Kar
========================================
Kernel : 5.15.0-88-generic
User   : student
Uptime : up 2 hours, 15 minutes
Date   : 29 March 2026
```

---


## 📌 Conclusion

Working on this audit made me more confident with Linux and Bash scripting. What initially seemed complex became manageable once broken into smaller steps using loops, variables, and conditions.

Git, as an open-source tool, represents the power of community-driven development. This project helped me appreciate not just how tools work, but why they exist.
