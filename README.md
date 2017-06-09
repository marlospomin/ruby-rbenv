# Installing Ruby with Rbenv

This repository was originally meant to whoever is struggling installing ruby with rbenv or ruby/rails in general, this process can be done using ```ruby-installer.sh``` or with a manual installation with the appropriate steps found in the section below.

## Usage

Use the following commands to run the script:

```
$ cd ~
$ git clone ruby-rbenv
$ mv ruby-rbenv/ruby-installer.sh ~
$ ./ruby-installer.sh
```

This script **was not** _properly_ tested and **will** install rails, take it with a grain of salt, though, if you have doubts about using it, just use the manual steps.

If the script doesn't run use ```chmod``` and allow it to be executed.

### > Manual Installation

```
# clone rbenv source code and add it do PATH
git clone https://github.com/rbenv/rbenv.git ~/.rbenv

# initialize rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
echo 'eval "$(rbenv init -)"' >> ~/.bash_profile

# clone ruby-build to compile and install ruby
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bash_profile
source ~/.bash_profile

# install ruby globally
rbenv install -v 2.2.6
rbenv global 2.2.6

# check if ruby were installed properly
ruby -v

# install bundler and rails
gem install bundler
rbenv rehash

gem install rails
rbenv rehash

# check your rails version
rails -v
```

### > Contributing

In case you know how/want to improve this repository feel free to do so, just make a pull request and we will go from there.

## License

Released under [MIT](LICENSE).
