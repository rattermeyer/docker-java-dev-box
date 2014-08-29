#!/bin/sh
apt-get update
apt-get upgrade -y
apt-get install -y git ruby-all-dev vim vim-puppet puppet-lint 
#curl -s https://get.docker.io/ubuntu/ | sudo sh
gem install bundler
gem install hiera
gem install librarian-puppet
