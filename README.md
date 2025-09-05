# 🍺 Nagging Nancy Homebrew Formula

> 🚀 **Your friendly, persistent terminal-based reminders app** - now available via Homebrew!

[![Homebrew](https://img.shields.io/badge/homebrew-formula-blue?style=flat-square)](https://github.com/ivyascorp-net/homebrew-nagging-nancy)
[![GitHub](https://img.shields.io/badge/github-nagging--nancy-black?style=flat-square)](https://github.com/ivyascorp-net/nagging-nancy)
[![MIT License](https://img.shields.io/badge/license-MIT-green?style=flat-square)](https://opensource.org/licenses/MIT)

## ✨ What is Nagging Nancy?

Nagging Nancy is a **lightning-fast** ⚡ terminal-based task management and reminder system built in Go. It features a beautiful interactive TUI (Terminal User Interface) and persistent desktop notifications to keep you on track with your goals.

### 🎯 Key Features

- **🚀 Lightning Fast** - Single binary, zero dependencies
- **🎨 Beautiful TUI** - Clean, interactive terminal interface
- **🔔 Smart Notifications** - Cross-platform desktop notifications
- **📅 Natural Language** - Add reminders with human-friendly input
- **🎯 Priority System** - Organize tasks by importance (high, medium, low)
- **💾 Local Storage** - Your data stays on your machine
- **🌙 Background Daemon** - Persistent reminders even when app is closed

## 🍺 Installation

### Quick Install (Recommended)

```bash
# Add the tap
brew tap ivyascorp-net/nagging-nancy

# Install Nancy
brew install nagging-nancy
```

### Update to Latest Version

```bash
brew update && brew upgrade nagging-nancy
```

## 🎮 Quick Start

```bash
# Add your first reminder
nancy add "Call mom at 3pm"

# View all reminders
nancy list

# Launch the beautiful TUI
nancy interactive

# Start background notifications
nancy daemon start

# Get help
nancy --help
```

## 🔧 Platform-Specific Setup

### 🍎 macOS Users
For the best notification experience:
```bash
brew install terminal-notifier
```

### 🐧 Linux Users
Install notification support:
```bash
# Ubuntu/Debian
sudo apt-get install libnotify-bin

# RHEL/CentOS
sudo yum install libnotify

# Arch Linux
sudo pacman -S libnotify
```

## 📚 Learn More

- **📖 Main Project**: [github.com/ivyascorp-net/nagging-nancy](https://github.com/ivyascorp-net/nagging-nancy)
- **🐛 Report Issues**: [GitHub Issues](https://github.com/ivyascorp-net/nagging-nancy/issues)
- **💡 Feature Requests**: [GitHub Discussions](https://github.com/ivyascorp-net/nagging-nancy/discussions)

## 🤝 Contributing

Found a bug in the formula? Want to suggest improvements?

1. 🍴 Fork this repository
2. 🔧 Make your changes
3. 🎯 Test your formula: `brew install --build-from-source ./Formula/nagging-nancy.rb`
4. 📤 Submit a pull request

## 📄 License

This Homebrew formula is released under the [MIT License](https://opensource.org/licenses/MIT).

---

<div align="center">

**Made with ❤️ by [IvyasCorp](https://github.com/ivyascorp-net)**

*Never forget anything important again!* 🎯

</div>