# Ekanek

Ekanek is a Ruby on Rails assignment for dealing with Login, upload private files, generate short links, pagination.

## Installation

Use the package manager [rvm](https://rvm.io/rvm/install) to install ruby.

```bash
# choose ruby version
$ rvm use --default 3.0.0
```
```bash
# if you gitting error 
"Unfortunately, an unexpected error occurred, and Bundler cannot continue."
$ rvm repair
$ rvm fix-permissions
```

```bash
# installing bundler gem

$ gem install bundler
```



```bash
# get clone from git repository

$ git clone https://github.com/mayursingh12/ekanek.git
```

```bash
# install libraries dependencies

$ bundle install
```

```bash
# install node

$ curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
$ sudo apt-get install -y nodejs
```

```bash
# install yarn

$ sudo npm install --global yarn
```
```bash
# if you getting error 
"cannot load such file -- listen"

$ bundle config --delete without
$ bundle
```
```bash
# setup webpacker

$ rails webpacker:install
$ rails webpacker:compile
```

## Usage

```bash
# Create Database
rails db:create

# Generate Schema
rails db:migrate

# Now install webpacker
rails webpacker:install

# run rails server
rails s
```

## Output

```bash
=> Booting Puma
=> Rails 6.1 application starting in development 
=> Run `bin/rails server --help` for more startup options
Puma starting in single mode...
* Puma version: 5.5.2 (ruby 3.0.0-p0) 
*  Min threads: 5
*  Max threads: 5
*  Environment: development
*          PID: 56775
* Listening on http://127.0.0.1:3000
* Listening on http://[::1]:3000
Use Ctrl-C to stop
```


This will start up Puma, a web server distributed with Rails by default. To see your application in action, open a browser window and navigate to [http://localhost:3000](http://localhost:3000).

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

