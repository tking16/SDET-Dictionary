#Standard steps when building a new project

	mkdir my_project
	cd my_project

	touch README.md Gemfile
	echo "# This is My Project" > README.md
	echo "source 'https://rubygems.org\nruby'2.1.1'\n\ngem 'rspec'" > Gemfile

	mkdir spec
	touch spec/spec_helper.rb
	echo "require 'rspec'" > spec/spec_helper.rb

	bundle install

	git init
	git add .
	git commit -m "Initial Commit"

	hub create
	git push -u origin master
	hub browse