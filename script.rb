# Parse information from /etc/os-release line with variable ID or ID_LIKE
distro = system("grep `ID` /etc/os-release")
id_like = system("grep `ID_LIKE` /etc/os-release")

# Ubuntu based distros
if distro.include?.downcase "ubuntu" or id_like.include?.downcase "ubuntu"
	system 
	puts "What browser would you like to install on your system?"
	puts "- Firefox"
	puts "- Chromium"
	puts "- Opera"
	puts "- Vivaldi"
	print "Pick a browser/browsers from the above list: "
		browser_choice_ubuntu = gets.chomp
			if browser_choice_ubuntu.include?.downcase "firefox"
				system("sudo apt-get install firefox -y")
			elsif browser_choice_ubuntu.include?.downcase "chromium"
				system("sudo apt-get install chromium -y")
			elsif browser_choice_ubuntu.include?.downcase "opera"
				system()

# Debian based distros
elsif distro