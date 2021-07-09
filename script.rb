# Parse information from /etc/os-release line with variable ID or ID_LIKE
distro = system("grep "ID=" /etc/os-release")
id_like = system("grep "ID_LIKE=" /etc/os-release")

# Ubuntu based distros
if distro.include?.downcase "ubuntu" or id_like.include?.downcase "ubuntu" == true
	puts "We will run a system upgrade beforehand on the system to make sure everything's up-to-date."
	puts "What browser would you like to install on your system?"
	puts "- Firefox"
	puts "- Chromium"
	puts "- Opera"
	puts "- Vivaldi"
	print "Pick a browser/browsers from the above list (you can choose multiple browsers) or press Q to quit: "
		browser_choice_ubuntu = gets.chomp
			if browser_choice_ubuntu.include?.downcase "firefox"
				system("sudo apt-get install firefox -y")
				puts "Installation complete."
			elsif browser_choice_ubuntu.include?.downcase "chromium"
				system("sudo apt-get install chromium -y")
			elsif browser_choice_ubuntu.include?.downcase "opera"
				system("wget https://download3.operacdn.com/pub/opera/desktop/77.0.4054.90/linux/opera-stable_77.0.4054.90_amd64.deb")
				system("sudo dpkg -i opera-stable_77*.deb")
				system("sudo apt-get install -fy")	
				system("rm opera-stable_77*.deb")
			elsif browser_choice_ubuntu.include?.downcase "vivaldi"
				system("wget https://downloads.vivaldi.com/stable/vivaldi-stable_4.0.2312.33-1_amd64.deb")
				system("sudo dpkg -i vivaldi*.deb")
				system("sudo apt-get install -fy")
				system("rm vivaldi*.deb")
			elsif browser_choice_ubuntu.downcase == "q"
				exit!
			end
	puts "Which gaming client would you like to download?"
	puts "- Lutris"
	puts "- Steam"
	print "Pick (a) gaming client(s) from the above list (press S to skip, press Q to quit): "
		gaming_choice_ubuntu = gets.chomp
			next if gaming_choice_ubuntu.downcase == "s"
			elsif gaming_choice_ubuntu.downcase.include? "lutris"
				system("sudo add-apt-repository ppa:lutris-team/lutris -y")
				system("sudo apt-get update")
				system("sudo apt-get install lutris wine-staging winetricks -y")
			elsif gaming_choice_ubuntu.downcase.include? "steam"
				system("wget ") # Insert link for Steam deb file download
				system("sudo dpkg -i steam_latest.deb")
				system("sudo apt-get install -fy")
				system("rm -f steam_latest.deb")
			elsif gaming_choice_ubuntu.downcase == "q"
				exit!
			end
# Debian based distros
elsif distro