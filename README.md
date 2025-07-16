# 📦 Folder Backup Script

This is a simple Bash script to back up any folder on your system into a `.zip` file with a timestamp in the filename. It ensures that the full absolute path is **not** included inside the zip file (to avoid nested directories like `home/user/...` when unzipped).

---

## 🛠 Features

- Takes user input for the folder path
- Creates a `.zip` backup with current date and time
- Only includes the target folder (no full path)
- Output file named like: `myfolder_backup_20250715_140030.zip`
- Automatically moves the zip file to the current working directory

---

## 📋 Usage

1. **Clone this repository:**

   ```bash
   git clone https://github.com/YOUR_USERNAME/folder-backup-script.git
   cd folder-backup-script
