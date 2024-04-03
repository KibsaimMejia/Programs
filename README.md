# Programs & Experiments Instructions

**Programs & Experiments** is a comprehensive repository for all public programs and experiments! Crafted with docker-compose for seamless operation on Debian/Linux.

## [Programs & Experiments Development](https://kibsaimmejia.github.io/Programs)

- [Restaurant Booking App: Development](https://kibsaimmejia.github.io/Programs/RestaurantBooking): Restaurant Booking App Development

## How to run actually

``` bash
# Windows: Right click on Start icon and select "Command Prompt (Admin)"
wsl --install
```
``` bash
sudo apt update && \
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common && \
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add - && \
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" && \
sudo apt update && \
sudo apt install -y docker-ce docker-compose && \
sudo systemctl start docker && sudo systemctl enable docker && \
sudo usermod -aG docker $USER && \
sudo apt install -y nginx && \
sudo systemctl start nginx && sudo systemctl enable nginx
```
Other scripts
``` bash
wsl --shutdown
```
``` bash
docker --version
docker-compose --version
```
Everything is working?
``` bash
#!/bin/bash

# Ping DuckDuckGo for 7 seconds
ping -w 7 duckduckgo.com

# Ping Wikipedia for 5 seconds
ping -w 5 wikipedia.org

# Ping GitHub for 3 seconds
ping -w 3 github.com

# Open http://localhost in the default system browser
if which xdg-open > /dev/null; then
   xdg-open http://localhost
elif which gnome-open > /dev/null; then
   gnome-open http://localhost
else
   echo "Please open http://localhost in your browser."
fi
```
**Caution**: This script requires administrative privileges. Always review scripts from the internet before running them with elevated permissions.

...

with passion by Kibsiam Mejia.
