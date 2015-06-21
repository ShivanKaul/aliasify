require "aliasify/version"

module Aliasify
	def self.addAlias(shortcut)
		cwd = Dir.pwd
		toAdd = "alias #{shortcut}=\"cd #{cwd}\""
		puts "#{toAdd}"
		if File.exist?("#{Dir.home}/.bash_aliases") 
			File.open("#{Dir.home}/.bash_aliases", 'a') do |file|
				file.puts toAdd
				print "Success! Go to the current directory by simply typing #{shortcut}. Try it out!"
			end
		elsif File.exist?("#{Dir.home}/.bash_profile") 
			File.open("#{Dir.home}/.bash_profile", 'a') do |file|
				file.puts toAdd
				print "Success! Go to the current directory by simply typing #{shortcut}. Try it out!"
			end
		elsif File.exist?("#{Dir.home}/.bashrc") 
			File.open("#{Dir.home}/.bashrc", 'a') do |file|
				file.puts toAdd
				print "Success! Go to the current directory by simply typing #{shortcut}. Try it out!"
			end
		elsif File.exist?("#{Dir.home}/.bash_login") 
			File.open("#{Dir.home}/.bash_login", 'a') do |file|
				file.puts toAdd
				print "Success! Go to the current directory by simply typing #{shortcut}. Try it out!"

			end
		elsif File.exist?("#{Dir.home}/.bash_profile") 
			File.open("#{Dir.home}/.bash_profile", 'a') do |file|
				file.puts toAdd
				print "Success! Go to the current directory by simply typing #{shortcut}. Try it out!"
			end
		else print "Tried to look for .bash_aliases, .bash_profile, .bashrc, .bash_profile and .environment. None of them were found, so won't be able to add alias :("
		end
	end
end
