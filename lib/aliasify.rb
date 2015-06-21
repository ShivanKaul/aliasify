require "aliasify/version"

module Aliasify
	@@toAdd
	@@shortcut

	def self.add_alias(shortcut)
		cwd = Dir.pwd
		@@toAdd = "alias #{shortcut}=\"cd #{cwd}\""
		@@shortcut = shortcut
		print "Trying to add `#{@@toAdd}`..."
		if file_exists(".bash_aliases")
			add_to_file(".bash_aliases")
		elsif file_exists(".bash_profile")
			add_to_file(".bash_profile")
		elsif file_exists(".bashrc")
			add_to_file(".bashrc")
		elsif file_exists(".bash_login")
			add_to_file(".bash_login")
		elsif file_exists(".environment")
			add_to_file(".environment")
		else print "Tried to look for .bash_aliases, .bash_profile, .bashrc, .bash_login and .environment.
			None of them were found, so won't be able to add alias :("
		end
	end

	# Helper Functions

	def self.add_to_file(filename)
		File.open(filename, 'a') do |file|
			file.puts @@toAdd
			puts " Found #{filename}."
			print "Success! Go to the current directory from wherever by simply typing `#{@@shortcut}`."
		end
	end

	def self.file_exists(filename)
		File.exist?("#{Dir.home}/#{filename}")
	end

end
