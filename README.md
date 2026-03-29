# 🎬 The Open Source Audit — VLC Media Player

## 👨‍🎓 Student Details

| Field | Details |
|-------|---------|
| **Name** | Mukul |
| **Registration Number** | 24BCE10027 |
| **Course** | Open Source Software (OSS NGMC) |
| **University** | VIT Bhopal University |

---

## 🛠️ Software Audited

| Field | Details |
|-------|---------|
| **Software** | VLC Media Player |
| **Category** | Cross-Platform Multimedia Player & Streaming Server |
| **License** | GNU General Public License v2 (GPLv2) |
| **Developer** | VideoLAN (Non-Profit, France) |
| **Downloads** | 5+ Billion |

---

## 📖 Project Description

This repository contains my capstone project for the Open Source Software course.

For this audit, I chose **VLC Media Player**, a free and open-source cross-platform multimedia player developed by the VideoLAN project. Although I have been using VLC since school to play videos, this project helped me understand its deeper origin, philosophy, and the open-source principles it is built upon.

VLC is a perfect example of how a student research project — originally built to solve a university network streaming problem — evolved into one of the most downloaded software tools in the world, used by billions of people across every major platform.

This repository includes five shell scripts that demonstrate Linux concepts and practical interaction with open-source systems.

---

## 📂 Repository Structure

```
oss-audit-24BCE10027/
├── README.md
├── Project_Report.pdf
├── scripts/
│   ├── 01_system_identity.sh
│   ├── 02_package_inspector.sh
│   ├── 03_disk_auditor.sh
│   ├── 04_log_analyzer.sh
│   └── 05_manifesto_generator.sh
└── screenshots/
    ├── script1_run.png
    ├── script2_run.png
    ├── script3_run.png
    ├── script4_run.png
    └── script5_run.png
```

---

## 🧾 Shell Scripts Overview

| Script | Description | Concepts Used |
|--------|-------------|---------------|
| `01_system_identity.sh` | Displays system info like kernel, distro, uptime, and VLC license note | Variables, command substitution, echo |
| `02_package_inspector.sh` | Checks if VLC is installed and shows version + package details | if-else, case, grep, dpkg |
| `03_disk_auditor.sh` | Audits system directories and VLC config folder for size and permissions | for loop, awk, cut, du, df |
| `04_log_analyzer.sh` | Scans log files for keywords like "error" and counts occurrences | while-read loop, arguments, counters |
| `05_manifesto_generator.sh` | Generates a personalized open-source manifesto and saves it to a file | read input, file writing, date |

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
./scripts/04_log_analyzer.sh /var/log/syslog codec
```

---

## 💻 Requirements

- Linux-based OS (Tested on Ubuntu)
- Bash shell
- VLC Media Player installed
- Standard Linux utilities:
  - `awk`
  - `grep`
  - `cut`
  - `dpkg`

### Install VLC (if not installed):

```bash
sudo apt update
sudo apt install vlc
```

Or via Snap:

```bash
sudo snap install vlc
```

---

## 📋 Sample Output

Example output of `01_system_identity.sh`:

```
================================
 Open Source Audit - Mukul
================================
Software Choice : VLC Media Player
Distribution    : GNU/Linux
Kernel          : 5.15.0-88-generic
Current User    : mukul
Home Directory  : /home/mukul
Uptime          : up 2 hours, 15 minutes
Date and Time   : 29 March 2026
--------------------------------
VLC is distributed under the GPL v2 license.
================================
```

---

## 📌 Conclusion

Working on this audit gave me a completely new perspective on software I had been using for years without thinking about. VLC started as a student project in France and became something billions of people depend on daily — all because the students decided to release it freely under the GPL instead of letting it die after the university project ended.

The GPL license is what keeps VLC permanently open. No company can take the code, close it off, and sell it. The community always retains the right to use, study, and improve it. That is a genuinely powerful idea.

The shell scripting portion was the most practically useful part of this project for me. Writing scripts that handle errors, read files line by line, and interact with installed packages showed me how much is possible with basic Bash — tools like `awk` and `grep` that seemed intimidating at first turned out to be very logical once applied to real tasks.
