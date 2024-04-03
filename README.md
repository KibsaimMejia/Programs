# Programs & Experiments Instructions

**Programs & Experiments** is a comprehensive repository for all public programs and experiments! Crafted with docker-compose for seamless operation on Debian/Linux.

## [Programs & Experiments Development](https://kibsaimmejia.github.io/Programs)

- [Restaurant Booking App: Development](https://kibsaimmejia.github.io/Programs/RestaurantBooking): Restaurant Booking App Development
- [Random](https://kibsaimmejia.github.io/Programs/Random): Random Visualization Development

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

**Caution**: This script requires administrative privileges. Always review scripts from the internet before running them with elevated permissions.

...

with passion by Kibsiam Mejia.
