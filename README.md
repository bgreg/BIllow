

# Getting started on OSX 10.12.6 or higher.  

(commands you need to run will be highlighted like code)
The instructions below will help you set up a system from scratch, and run this project in development mode. 

1) Preparing your system to run Ruby
	1) Install Xcode dev tools.  This will be used in later steps to compile Ruby.

		`xcode-select --install`

	2) Install Homebrew. Besure to follow the onscreen instructions after each step. If you run into trouble after completing steps 1-4 below, try running `brew doctor` and following the advice it provides.

		1) `ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`
		2)  Confirm the install worked: `brew -v`
		3) `brew update`
		3) `echo 'eval "$(rbenv init -)"' >> ~/.bash_profile`
		4) `source ~/.bash_profile`

	3) Install rbenv and ruby-build.  These packages (called brew kegs) will manage your installed Ruby versions and allow you to download and install new versions as needed.
		1) `brew install rbenv`
		2) `brew install ruby-build`
	4) Confirm you rbenv install. Make sure this returns the following command works, it should return something like "rbenv 1.1.1"
		
		`rbenv -v`
	5) Install Git
		1) `brew install git`
		2) verify the install worked: `git --version`
		

2) Installing Ruby
	1) Use Rbenv to install the latest Ruby (2.4.2 as of today). This might take a few minutes.
	
		`rbenv install 2.4.2`

	2) Tell rbenv you would like to use this version of Ruby you just installed
		
		`rbenv global 2.4.2`

	3) Confirm your installation is correct. After running the command below, expect to see output similar to: "ruby 2.4.2 ... " in your terminal.
		
		`ruby -v`
3) Install Ruby on Rails
	1) Rails is just a gem, that installs a few other dependant gems. The following is all you need to do to install of of rails.
	
		`gem install rails`
		
	2) Confirm you rails install was successful. Expect to see something similar too: "Rails 5.1.4"
		
		`rails -v`
		

4) Install Postgresql. There are 2 ways to do this, I'll list both below.

	1) Use the app. In my opinion, the easiest way to install this on OSX is to use this app: https://postgresapp.com/.  After you have followed the install instructions from the website, all you have to do is launch the app and it starts Postgres on port 5432. The database.yml file in this project should already configured to use postgres in development mode. 
	 
	OR 
	 
	2) You can use brew.  
		1) `brew install postgresql`
		2) Run this to see instructions on how to start server: `brew info postgresql` 
	
5) Install bundler. This will help you manage all your Rails dependancies. 
	
	`gem install bundler`
	
	Sometimes a gem will install a native dependancy that will require additonal installation steps.  For example Nokogiri installs libxml, and the pg gem needs to know where postgres is. Usually the output messages will help inform you of any troubleshooting that is needed. 
	
6) Download this repository
	 
	 `git clone https://github.com/bgreg/BIllow.git`
7) Navigate to the application's root directory
	 
	 `cd BIllow`
8) Install the application's dependacies
	 
	 `bundle install`
9) Ask Rails to setup it's database. This command will create databases in postgres for each environment, run migrations against development, and run the seed.rb file to add some data. 
	 
	 `rails db:setup`

10) At this point you should be ready to run the Rails server. The command below will boot up puma and serve pages on localhost:3000
	 
	 `rails server`
11) Try it out! 
	1) Navigate to localhost:3000
	2) Use the drop box to select a location, and click "submit"
	3) You should see it load up a page that displays a list of homes for that location. 



----
*Alternate implementation*


A simple multi-select implementation with same page rendering for easy browsing: https://github.com/bgreg/BIllow/pull/1

*Future work* 


I was considering intruducing a Search model.  When submitting the form with multiple choices, a search object could be saved.  Then the search index, for that search, would populate with your results.  This has a few benefits, aside from a simple design, it also lets us add search history so a user can go back through what they looked for in the past. 

The down side here would be adding a DB write to each search call, and quickly growing storage.  Depending on how much this app is used, the 1 extra write could be neglagable.  I think limiting the amount of history we save per user for now would be an acceptable workaround for the storage issue. 

