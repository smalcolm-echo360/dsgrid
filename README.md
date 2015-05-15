# Docker Selenium Grid

CLI program for building and managing a Selenium Grid with Docker containers. Each browser node runs a single instance of the browser. I find this 
helpful when running Selenium tests in parallel.

[View the Demo](http://asciinema.org/a/5879) Installation and Usage on Ubuntu Raring with Vagrant

## Compatibility
* Selenium `2.44`
* Docker `Client version: 1.0.1, Client API version: 1.12`

## Requirements

* Docker
* Python
* pip

## Installation

This installation will build the following Docker containers: Selenium Hub, PhantomJS, Chrome, and Firefox. Note: If you
want to customize the Dockerfiles, do so in `/usr/local/dsgrid/files` before running the install.

```bash
# Note: you may have to use "sudo" if your linux user does not have proper permissions
pip install dsgrid
dsgrid install
```

## Usage

Once installed you can start and manage a Selenium Grid. Example:

```bash
# Note: you may have to use "sudo" if your linux user does not have proper permissions
# Start the Hub
dsgrid start
# Add Nodes 
dsgrid nodes add firefox
dsgrid nodes add phantomjs
# Restart Nodes by Browser
dsgrid nodes restart firefox
# Restart All Nodes
dsgrid nodes restart
# Check Status
dsgrid status
# Shutdown
dsgrid shutdown
```

View the Grid console on: http://localhost:49044/grid/console

## Installing and Using within Docker

You don't even need to use pip. The grid manager can be run from inside docker on minimal systems.

```
docker run -v /var/run/docker.sock:/var/run/docker.sock calebtomlinson/dsgrid dsgrid install
```

Use any of dsgrid commands from inside the container.

```
docker run -v /var/run/docker.sock:/var/run/docker.sock calebtomlinson/dsgrid dsgrid start
docker run -v /var/run/docker.sock:/var/run/docker.sock calebtomlinson/dsgrid dsgrid nodes add firefox
docker run -v /var/run/docker.sock:/var/run/docker.sock calebtomlinson/dsgrid dsgrid shutdown
```

## Hacking

Feel free to hack the Dockerfiles and scripts under `files/`. Pull requests are welcomed.

## Author Note

I put this together over a weekend. I am not very strong in Python but wanted to build a CLI app which can be easily
installed on Docker hosts.

The tests are incomplete. What you see are my TDD leftovers.

## Special Thanks

* Yassine Jaffoo (Yas)

## Having Problems? Need Help?

**Author Email:** brady[at]vitrano.me or get my Gmail from the setup.py


