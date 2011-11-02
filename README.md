# Rapdev X sinatra backend prototype

Here it is - sinatra talking to a backend tic tac toe game.  May not be perfectly designed for certain things, but acceptable

## Install instructions

Designed to not use anything with native extensions, so it should be compatible across multiple OSs.  Install has also been trimmed down to the minimum requirements.

### Windows

1. Get RailsInstaller from [railsinstaller.org](http://railsinstaller.org/)
1. Run RailsInstaller (gets you ruby 1.9.2, rails 3.1, bundler, and some other helpful junk)
1. Go through the setup involved (git user name, email and ssh key - this needs to go on github)
1. Clone the project "git clone git://github.com/bmnick/rapdev-backend-sinatra.git" and enter with "cd rapdev-backend-sinatra"
1. Run bundler with "bundle install"
1. Start the server with "bundle exec rackup config.ru"
1. Visit the site at "http://localhost:9292" or whatever other port it says when you started your server.
1. If you make changes and don't use another server, you'll need to restart your server on every change to the ruby files.

### Mac/linux

1. Open up a terminal - don't be afraid
1. Get RVM from [here](http://beginrescueend.com/) or just run "$ bash < <(curl -s https://raw.github.com/wayneeseguin/rvm/master/binscripts/rvm-installer)"
1. (optionally) Install any additional necessary packages for rvm to work on your system (readline, build-essential, etc.)
1. Install ruby 1.9.2 via "rvm install 1.9.2"
1. Start using 1.9.2 "rvm use 1.9.2"
1. (optional, but recommended) create a gemset for the project "rvm gemset create [project name]" and use with "rvm use 1.9.2@[project name]"
1. Install bundler with "gem install bundler" (the prerelease version is faster but may be buggier "gem install bundler --pre")
1. Clone the project "git clone git://github.com/bmnick/rapdev-backend-sinatra.git" and enter with "cd rapdev-backend-sinatra"
1. Run bundler with "bundle install"
1. Start up the server with "bundle exec rackup config.ru" (you can also use shotgun, thin, unicorn, or any other rack compliant webserver, but those are not all windows compatible so not suggested by default)
1. Visit the site at "http://localhost:9292" or whatever other port it says when you started your server.
1. If you make changes and don't use another server, you'll need to restart your server on every change to the ruby files.

## Dependencies

* sinatra
* haml
* sass