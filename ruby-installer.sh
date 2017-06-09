#!/bin/bash

echo 'welcome, this script will install and configure the following packages: ruby-2.2.6, rails@latest'.
echo 'this may take a while...'

# clone rbenv source code and add it do PATH
echo 'cloning rbenv source code'

git clone https://github.com/rbenv/rbenv.git ~/.rbenv

# initialize rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
echo 'eval "$(rbenv init -)"' >> ~/.bash_profile

# clone rbenv's plugin to compile and install ruby
echo 'installing ruby-build'

git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bash_profile
source ~/.bash_profile

# install ruby
echo 'installing ruby'

rbenv install -v 2.2.6
rbenv global 2.2.6

# prints out ruby version
echo 'the following version(s) of ruby were installed:'
ruby -v
echo '\n'

#install bundler and rails
echo 'installing rails'
gem install bundler
rbenv rehash
gem install rails
rbenv rehash

echo 'the following version of rails were installed:'
rails -v
echo '\n'

echo 'Congratz, you have installed ruby-lang and rails@latest, enjoy!'
