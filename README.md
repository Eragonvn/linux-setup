# Purpose:
This script is made to assist with the setting up of several of the most popular Linux distributions, some of which include:
- Ubuntu, Linux Mint, and other Ubuntu based distributions.
- Arch Linux, Manjaro, and other Arch based distributions.
- Fedora Linux
- CentOS, AlmaLinux, and other CentOS/RHEL based distributions (version 8.4 for now)
- Solus Linux
- OpenSUSE (both Tumbleweed and Leap)

# How to run:
- Use the script.rb file to run this and start setting up accordingly to the prompts.
`ruby script.rb`

# What can be installed:
- Internet browsers: Firefox, Chromium, Opera, Vivaldi
- Gaming related apps: Lutris, Steam, Wine (+ Winetricks)
- Office suites: LibreOffice, OpenOffice, OnlyOffice, FreeOffice
- Creative related applications: Kdenlive, GIMP, Krita, Inkscape, DaVinci Resolve (non-Studio version), Audacity
- Media applications: VLC, MPV
- <a href="https://github.com/FontManager/font-manager">Font manager</a>
- Communication applications: Viber, Telegram, Signal, Discord
- Dependencies for different coding languages: Ruby + Gems, Node.js + NPM, PHP, 
- Text editors/IDEs: Visual Studio Code, Atom, Sublime Text, IntelliJ, RubyMine

# Contributions:
I do appreciate any contributions from others to this script, and to contribute, please make a pull request and recommit to this repo. Thanks!
If you want anything to be added, please make an issue and write what you would want to have in here.

# Contacts:
- Email: lambuibao@outlook.com
- Discord: mys31f#3981

# Dependencies:
- Ruby
- wget
- <a href="https://rpmfusion.org/">RPMFusion</a> (will be installed for Fedora and CentOS/RHEL based systems)
- <a href="https://github.com/Jguer/yay">yay</a> and its dependencies (will be installed for Arch Linux based distributions)

# Known trade-offs:
- Steam on CentOS/RHEL will be the Flatpak version instead.
- Spotify on Fedora when installed from RPMFusion will come with LPF, which will have to be launched before having Spotify officially installed.
- (Ruby only) Gems cannot be used globally on Arch due to different installation paths, please refer to <a href="https://wiki.archlinux.org/title/ruby#RubyGems"> this</a> to be able to use gems globally.
- 
- ... (to be continued.)

# Notes: this is only a provisional version, I'm putting this on a Rails like web client some time later.