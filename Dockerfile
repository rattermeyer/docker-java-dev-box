FROM phusion/baseimage 
MAINTAINER Richard Attermeyer "richard.attermeyer@gmail.com"

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y build-essential ruby-all-dev vim vim-puppet puppet-lint screen tmux unzip
RUN gem install bundler
RUN gem install hiera
RUN gem install librarian-puppet
RUN mkdir /tmp/files
ADD ./prepare-vagrant-user.sh /tmp/
ADD ./files /tmp/files/
RUN chmod u+x /tmp/*.sh
RUN /tmp/prepare-vagrant-user.sh 
# JAVA 
RUN mkdir -p /opt/java/
RUN tar xzvf /tmp/files/jdk*.tar.gz -C /opt/java
RUN unzip /tmp/files/jce*.zip -d /tmp/files
RUN cp /tmp/files/UnlimitedJCEPolicyJDK8/*.jar /opt/java/jdk1.8.0_20/jre/lib/security
# NodeJS
RUN curl -sL https://deb.nodesource.com/setup | sudo bash -
RUN apt-get install -y nodejs
