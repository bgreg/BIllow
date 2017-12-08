# Getting started on OSX 10.12.6 or higher

(commands you need to run will be highlighted like code)

1) Preparing your system to run Ruby
	* Install Xcode dev tools.  This will be used in later steps to compile Ruby.

		1) `xcode-select --install`

	* Install Homebrew. If you run into trouble after completing steps 1-4 below,  try running `brew doctor` and following the advice it provides.

			1) `ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`
		2) `brew update`
		3) `echo 'eval "$(rbenv init -)"' >> ~/.bash_profile`
		4) `source ~/.bash_profile`

	* Install rbenv and ruby-build.  These packages (called brew kegs) will manage your installed Ruby versions and allow you to download and install new versions as needed.
		1) `brew install rbenv`
		2) `brew install ruby-build`

2) Installing Ruby
	* Use Rbenv to install the latest Ruby (2.4.2 as of today). This might take a few minutes
		1) `rbenv install 2.4.2`

	* Tell rbenv you would like to use this version of Ruby you just installed
		1) `rbenv global 2.4.2`

	* Confirm your installation is correct. After running the command below, expect to see "ruby 2.4.0p0 ... " in your terminal.
		1) `ruby -v`


3) Install Rails
	1) `gem install rails`





