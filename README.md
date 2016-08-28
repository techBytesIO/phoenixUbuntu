# Vagrant Ubuntu Development Server for Phoenix

These are the provisioning files for standing up your own Elixir and Phoenix development environment with Vagrant.

You can download the box from the official Vagrant site at [](https://atlas.hashicorp.com/techbytes/boxes/PhoenixUbuntu)

__Consists of:__
* Ubuntu 14.04.5 LTS
* Erlang 19
* Elixir 1.3.2
* Hex Package Manager
* Phoenix Framework
* nodejs 6.4.0
* PostgreSQL 9.5.4
* htop Process Viewer

## Standing up your Phoenix Development Environment
### Pull down the box from Vagrant
You can download the box from the official [Vagrant site](https://atlas.hashicorp.com/techbytes/boxes/PhoenixUbuntu)
- or -
Go to your terminal and add the box this way:
vagrant box add techbytes/phoenixubuntu

### The quick down and dirty to mod your own play with the config
clone this Repo

cd into the file, open the files and alter

`vagrant init`

`vagrant up`

ta-da -- Now you have your Phoenix Development Environment

You can package this so that it is available for you on your host machine at anytime.

With your PhoenixUbuntu box up and running:
* vagrant package --output WHATEVEREYOUWANTTONAMEIT
