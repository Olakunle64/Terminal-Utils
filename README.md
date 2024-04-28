<div align="center">
  <h1>🛠️ Terminal Utils 🛠️</h1>
  <p>A collection of custom commands and utilities for the terminal.</p>
</div>

## 🚀 Overview

The `rrm` script creates a custom `rm` command for the Bash shell, providing functionality to move files to a recycle bin before deleting them. This helps prevent accidental deletion of files and allows for easy recovery if needed.

## ✨ Features

- **Recycle Bin Management:** Files are moved to a recycle bin directory (`~/Recycle_Bin`) instead of being permanently deleted.
- **Interactive CLI Interface:** Supports options to list contents of the recycle bin, restore files from the recycle bin, and empty the recycle bin.
- **Error Handling:** Provides informative error messages for cases where files or directories do not exist.
- **User-Friendly:** Designed to be easy to use and integrate into existing Bash workflows.

## 📦 Installation

1. Clone the repository or download the `rrm` script.
2. Make the script executable: `chmod +x rrm`.
3. Run the script: `./rrm`.

## 🛠️ Usage

```bash
# Display help message
rrm --help

# List contents of the recycle bin
rrm --list

# Restore a file from the recycle bin
rrm --restore <file>

# Empty the recycle bin
rrm --empty

# Move files to the recycle bin
rrm <file1> <file2> ...

