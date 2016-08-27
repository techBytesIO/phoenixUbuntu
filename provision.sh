#!/usr/bin/env bash

echo "Setting up Phoenix Ubuntu environment..."
echo "Starting with the update..."
apt-get update >/dev/null 2>&1

echo "Installing some basic pre-reqs..."
apt-get install -y software-properties-common curl
apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xcbcb082a1bb943db

wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add -
sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ trusty-pgdg main" >> /etc/apt/sources.list.d/postgresql.list'

curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -

echo "Let's add Erlang!"
wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb && dpkg -i erlang-solutions_1.0_all.deb
apt-get update
apt-get install -y esl-erlang

echo "Adding Elixir..."
apt-get install -y elixir

echo "Time to install Hex, our package manager"
mix local.hex --force

echo "Installing Phoenix...Fly baby, Fly!!"
mix archive.install https://github.com/phoenixframework/archives/raw/master/phoenix_new.ez --force

echo "Setting the correct timezone..."
ln -sf /usr/share/zoneinfo/UTC /etc/localtime

echo "Adding in PostgreSql..."
apt-get install -y postgresql postgresql-contrib
sudo -u postgres createuser --superuser vagrant

echo "Installing node....because you know you have to..."
apt-get install -y nodejs

echo "Minimizing the image..."
echo "Minimizing disk image..."
dd if=/dev/zero of=/EMPTY bs=1M
rm -f /EMPTY
sync
echo "I think I am done....let's find out"
