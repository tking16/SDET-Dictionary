#Bunder and Rake
-To do with configuration management
-Bundler allows us to run gem depencies
-Rake allows us to run certain commands we use in testing

##Bundler
-allows us to package information about our prject about which gems to install, which versions etc.
steps to use bundler

	-create a new file
	in your file enter:
		source 'https://rubygems.org'

		gem 'rspec', '>3.3.0', :require => rspec'
##Rake
lets us create command line-like tasks
e.g. 
*rake smoke* allows us to do smoke tests
*rake unit* allows us to do unit tests
*rake full* runs entire test suite

steps 
####on command line
touch Rakefile 

####in the file
		task :tests do
		`system command`
		end