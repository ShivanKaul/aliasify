require "aliasify/version"

module Aliasify
	@@toAdd
	@@shortcut

	def self.add_alias(shortcut)
		cwd = Dir.pwd
		@@toAdd = "alias #{shortcut}=\"cd #{cwd}\""
		@@shortcut = shortcut
		puts green("[aliasify]") + " Trying to add the alias to some kind of login script..."
		if file_exists(".bash_aliases")
			add_to_file(".bash_aliases")
		elsif file_exists(".bash_profile")
			add_to_file(".bash_profile")
		elsif file_exists(".bashrc")
			add_to_file(".bashrc")
		elsif file_exists(".bash_login")
			add_to_file(".bash_login")
		elsif file_exists(".profile")
			add_to_file(".profile")
		elsif file_exists(".environment")
			add_to_file(".environment")
		else print green("[aliasify]") + red(" Tried to find .bash_aliases, .bash_profile, .bashrc, .bash_login , .login, and .environment. None of them were found, so won't be able to add alias :(")
		end
	end

	# Helper Functions

	def self.add_to_file(filename)
		File.open("#{Dir.home}/#{filename}", 'a') do |file|
			file.puts @@toAdd
			puts green("[aliasify]") + " Found " + yellow("#{filename}")
			print green("[aliasify]") + " Success! Now, run `" + green("source ~/#{filename}") + "` to make the alias functional. Then, go to the current directory from wherever by simply typing in `" + green("#{@@shortcut}") + "`."
		end
	end

	def self.file_exists(filename)
		File.exist?("#{Dir.home}/#{filename}")
	end

	# Citation: http://stackoverflow.com/questions/2070010/how-to-output-my-ruby-commandline-text-in-different-colours/2070405#2070405
	# Didn't want to include a dependency on another gem
	def self.colorize(text, color_code)
		"\e[#{color_code}m#{text}\e[0m"
	end

	def self.red(text); colorize(text, 31); end
	def self.green(text); colorize(text, 32); end
	def self.yellow(text); colorize(text, 33); end

end
