# Parse information from /etc/os-release line with variable ID or ID_LIKE
distro = system("grep "ID=" /etc/os-release")
id_like = system("grep "ID_LIKE=" /etc/os-release")

# Ubuntu based distros
if distro.include?.downcase "ubuntu" or id_like.include?.downcase "ubuntu" == true
	puts "We will run a system upgrade beforehand on the system to make sure everything's up-to-date."
	system("sudo apt-get update && sudo apt-get dist-upgrade -y")
	puts "What browser would you like to install on your system?"
	puts "- Firefox"
	puts "- Chromium"
	puts "- Opera"
	puts "- Vivaldi"
	print "Pick a browser/browsers from the above list (you can choose multiple browsers) or press Q to quit: "
		browser_choice_ubuntu = gets.chomp
			next if browser_choice_ubuntu.downcase == "s"
			elsif browser_choice_ubuntu.include?.downcase "firefox"
				system("sudo apt-get install firefox -y")
				puts "Installation complete."
			elsif browser_choice_ubuntu.include?.downcase "chromium"
				system("sudo apt-get install chromium -y")
				puts "Installation complete."
			elsif browser_choice_ubuntu.include?.downcase "opera"
				system("wget https://download3.operacdn.com/pub/opera/desktop/77.0.4054.90/linux/opera-stable_77.0.4054.90_amd64.deb")
				system("sudo dpkg -i opera-stable_77*.deb")
				system("sudo apt-get install -fy")	
				system("rm opera-stable_77*.deb")
				puts "Installation complete."
			elsif browser_choice_ubuntu.include?.downcase "vivaldi"
				system("wget https://downloads.vivaldi.com/stable/vivaldi-stable_4.0.2312.33-1_amd64.deb")
				system("sudo dpkg -i vivaldi*.deb")
				system("sudo apt-get install -fy")
				system("rm vivaldi*.deb")
				puts "Installation complete."
			elsif browser_choice_ubuntu.downcase == "q"
				exit!
			end
	puts "Which gaming client(s) would you like to install on your system?"
	puts "- Lutris"
	puts "- Steam"
	print "Pick (a) gaming client(s) from the above list (press S to skip, press Q to quit): "
		gaming_choice_ubuntu = gets.chomp
			next if gaming_choice_ubuntu.downcase == "s"
			elsif gaming_choice_ubuntu.downcase.include? "lutris"
				system("sudo add-apt-repository ppa:lutris-team/lutris -y")
				ubuntu_version = system("grep "UBUNTU_CODENAME=" /etc/os-release")
				if ubuntu_version == "bionic"
					system("sudo dpkg --add-architecture i386")
					system("wget -nc https://dl.winehq.org/wine-builds/winehq.key")
					system("sudo apt-key add winehq.key")
					system("rm winehq.key")
					system("sudo add-apt-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ bionic main' -y")
				elsif ubuntu_version == "focal"
					system("sudo dpkg --add-architecture i386")
					system("wget -nc https://dl.winehq.org/wine-builds/winehq.key")
					system("sudo apt-key add winehq.key")
					system("rm winehq.key")
					system("sudo add-apt-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ bionic main' -y")
				elsif ubuntu_version == "groovy"
					system("sudo dpkg --add-architecture i386")
					system("wget -nc https://dl.winehq.org/wine-builds/winehq.key")
					system("sudo apt-key add winehq.key")
					system("rm winehq.key")
					system("sudo add-apt-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ groovy main' -y")
				elsif ubuntu_version == "hirsute"
					system("sudo dpkg --add-architecture i386")
					system("wget -nc https://dl.winehq.org/wine-builds/winehq.key")
					system("sudo apt-key add winehq.key")
					system("rm winehq.key")
					system("sudo add-apt-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ hirsute main' -y")
				end
				system("sudo apt-get update")
				system("sudo apt-get install lutris winehq-staging winetricks -y")
				puts "Installation complete."
			elsif gaming_choice_ubuntu.downcase.include? "steam"
				system("wget https://repo.steampowered.com/steam/archive/precise/steam_latest.deb") # Insert link for Steam deb file download
				system("sudo dpkg -i steam_latest.deb")
				system("sudo apt-get install -fy")
				system("rm -f steam_latest.deb")
				puts "Installation complete."
			elsif gaming_choice_ubuntu.downcase == "q"
				exit!
			end
	puts "Which office suite(s) would you like to install on your system?"
	puts "- LibreOffice"
	puts "- OpenOffice"
	puts "- OnlyOffice"
	puts "- FreeOffice"
	print "Pick (a) office suite(s) from the above list (press S to skip, press Q to quit): "
		office_choice_ubuntu = gets.chomp
			next if office_choice_ubuntu.downcase == "s"
			elsif office_choice_ubuntu.downcase.include? "libreoffice"
				system("sudo apt-get install libreoffice-common -y")
			elsif office_choice_ubuntu.downcase.include? "openoffice"
				# Needing help for now as Vietnamese underwater fiber cables are broken at the moment.
			elsif office_choice_ubuntu.include? "onlyoffice"
				# Needing help for now because I still don't remember which package to install.
			elsif office_choice_ubuntu.include? "freeoffice"
				system("wget https://www.softmaker.net/down/softmaker-freeoffice-2018_982-01_amd64.deb")
				system("sudo dpkg -i softmaker-freeoffice-2018_982-01_amd64.deb")
				system("rm softmaker-freeoffice-2018_982-01_amd64.deb")
				puts "Installation complete."
			elsif office_choice_ubuntu.downcase == "q"
				exit!
			end
	puts "Which creator app(s) would you like to install on your system?"
	puts "- Kdenlive"
	puts "- GIMP"
	puts "- Krita"
	puts "- Inkscape"
	puts "- DaVinci Resolve"
	puts "- Audacity"
	print "Pick (a) creator app(s) from the above list (press"
		creator_choice_ubuntu = gets.chomp
			next if creator_choice_ubuntu == "s"
			elsif creator_choice_ubuntu.downcase.include? "kdenlive"
				system("sudo apt-get install kdenlive -y")
				puts "Installation complete."
			elsif creator_choice_ubuntu.downcase.include? "gimp"
				system("sudo apt-get install gimp -y")
				puts "Installation complete."
			elsif creator_choice_ubuntu.downcase.include? "krita"
				system("sudo apt-get install krita -y")
				puts "Installation complete."
			elsif creator_choice_ubuntu.downcase.include? "inkscape"
				system("sudo apt-get install inkscape -y")
				puts "Installation complete."
			elsif creator_choice_ubuntu.downcase.include? "audacity"
				system("sudo apt-get install audacity -y")
				puts "Installation complete."
			elsif creator_choice_ubuntu.downcase.include? "davinci" or "resolve"
				# Need to do research to how the AUR version works so that we could download the zip file of DaVinci Resolve on Linux.
			elsif creator_choice_ubuntu.downcase == "q"
				exit!
			end
	















# Debian based distros
elsif distro