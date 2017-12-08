# Getting started on OSX 10.12.6 or higher

(commands you need to run will be highlighted like code)

1) Preparing your system to run Ruby
	1) Install Xcode dev tools.  This will be used in later steps to compile Ruby.

		1) `xcode-select --install`

	2) Install Homebrew. If you run into trouble after completing steps 1-4 below,  try running `brew doctor` and following the advice it provides.

		1) `ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`
		2) `brew update`
		3) `echo 'eval "$(rbenv init -)"' >> ~/.bash_profile`
		4) `source ~/.bash_profile`

	3) Install rbenv and ruby-build.  These packages (called brew kegs) will manage your installed Ruby versions and allow you to download and install new versions as needed.
		1) `brew install rbenv`
		2) `brew install ruby-build`
	4) Confirm you rbenv install. Make sure this returns the following command works, it should return something like "rbenv 1.1.1"
		1) `rbenv -v`

2) Installing Ruby
	1) Use Rbenv to install the latest Ruby (2.4.2 as of today). This might take a few minutes
		1) `rbenv install 2.4.2`

	2) Tell rbenv you would like to use this version of Ruby you just installed
		1) `rbenv global 2.4.2`

	3) Confirm your installation is correct. After running the command below, expect to see "ruby 2.4.0p0 ... " in your terminal.
		1) `ruby -v`
3) Install Ruby on Rails
	1) Rails is just a gem, that installs a few other dependant gems. The following is all you need to do to install of of rails. 
		1)`gem install rails`
		
	2) confirm you rails install was successful
		1) `rails -v`
		
4) Install bundler. This will help you manage all your Rails dependancies. 
	1) `gem install bundler`
	
5) Install Postgresql
	1) This project is using postgresql. In my opinion, the easiest way to install this on OSX is to use this app: https://postgresapp.com/.  All you have to do is launch the app and it starts Postgres on port 5432. The database.yml file in this project is already configured to use postgres in development mode. When run it makes a little elephant icon on the menu bar you can use to make sure postgres is really running. 
	
6) Download this repository
	1) `git clone git@github.com:bgreg/BIllow.git`
7) Navigate to the application's root directory
	1) `cd BIllow`
8) Install the application's dependacies
	1) `bundle install`
9) Ask Rails to setup it's database. This command will create databases in postgres for each environment, run migrations against development, and run the seed.rb file to add some data. 
	1) `rails db:setup`

10) At this point you should be ready to run the Rails server. The command below will boot up puma and serve pages on localhost:3000
	1) `rails server`
11) Try it out! 
	1) navigate to localhost:3000
	2) use the drop box to select a location, and click "submit"
	3) you should see it load up a page that displays a list of homes for that location. 




