<div align="center">
  <h1>🛠️ Terminal Utils 🛠️</h1>
  <p>A collection of custom commands and utilities for the terminal.</p>
  <img src="https://img.shields.io/badge/Made%20with-Bash-1f425f.svg" alt="Made with Bash">
</div>

## 🚀 Overview

The `rrm` script creates a custom `rm` command for the Bash shell, providing functionality to move files to a recycle bin before deleting them. This helps prevent accidental deletion of files and allows for easy recovery if needed.

## ✨ Features

- **Recycle Bin Management:** Files are moved to a recycle bin directory (`~/Recycle_Bin`) instead of being permanently deleted.
- **Interactive CLI Interface:** Supports options to list contents of the recycle bin, restore files from the recycle bin, and empty the recycle bin.
- **Error Handling:** Provides informative error messages for cases where files or directories do not exist.
- **User-Friendly:** Designed to be easy to use and integrate into existing Bash workflows.

## 📦 Installation

1. Clone the repository or download the `rm_script.sh` script.
2. Make the script executable: `chmod +x rm_script.sh`.
3. Run the script: `./rm_script.sh`.
4. Run `source ~/.bashrc`

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

# swap your default rm command with rrm -- optional
alias rrm=rm
alias rm=rrm
```
⚙️ Configuration
The recycle bin directory is located at ~/Recycle_Bin by default. You can customize the location by modifying the script.

🤝 Contribution
Contributions are welcome! Feel free to submit issues, feature requests, or pull requests on <a href="https://github.com/Olakunle64/Terminal-utils">Github</a>

📝 License
This project is licensed under the MIT License. See the LICENSE file for details.

<div align="center">
  Made with ❤️ by Salau Isiaka Olakunle
</div>

