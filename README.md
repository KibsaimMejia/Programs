# Programs & Experiments

**Programs & Experiments** is a comprehensive repository for all public programs and experiments! Crafted with docker-compose for seamless operation on Debian/Linux.

## Development Website

[Programs & Experiments Development Website](https://kibsaimmejia.github.io/Programs)

### Listed Programs

- [Restaurant Booking App: Development](https://kibsaimmejia.github.io/Programs/RestaurantBooking): Restaurant Booking App Development

### Listed Experiments

- [Random: Development](https://kibsaimmejia.github.io/Programs/Random): Random Visualization

## Instructions - How to run actually

### Setup

**Caution**: This script requires administrative privileges. Always review scripts from the internet before running them with elevated permissions.

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

## Help

``` bash
# Windows: Right click on Start icon and select "Command Prompt (Admin)"
wsl --install
```
Server Management Script
``` bash
#!/bin/bash

# This script provides a basic management toolkit for an NGINX server
# running on WSL with Ubuntu and includes resource management,
# updating, SSH access, and storage synchronization/access with Windows.

# Update System and NGINX
update_system_and_nginx() {
  echo "Updating system and NGINX..."
  sudo apt-get update && sudo apt-get upgrade -y
  sudo apt-get install nginx -y
  echo "System and NGINX have been updated."
}

# Start NGINX Service
start_nginx() {
  echo "Starting NGINX..."
  sudo service nginx start
  echo "NGINX started."
}

# Stop NGINX Service
stop_nginx() {
  echo "Stopping NGINX..."
  sudo service nginx stop
  echo "NGINX stopped."
}

# Restart NGINX Service
restart_nginx() {
  echo "Restarting NGINX..."
  sudo service nginx restart
  echo "NGINX restarted."
}

# Enable NGINX Service
enable_nginx() {
  echo "Enabling NGINX to start on boot..."
  sudo systemctl enable nginx
  echo "NGINX will now start on boot."
}

# Disable NGINX Service
disable_nginx() {
  echo "Disabling NGINX from starting on boot..."
  sudo systemctl disable nginx
  echo "NGINX will not start on boot."
}

# Edit NGINX Configuration
edit_nginx_config() {
  echo "Opening NGINX configuration for editing..."
  sudo nano /etc/nginx/nginx.conf
}

# Monitor Resource Usage
monitor_resources() {
  echo "Monitoring resource usage..."
  top
}

# Sync Storage with Windows
# Ensure that the Windows filesystem is mounted correctly in WSL.
sync_storage_with_windows() {
  echo "Syncing storage with Windows..."
  rsync -av --progress /mnt/c/Users/<YourWindowsUsername>/<WindowsDirectory> /home/<YourWSLUsername>/<TargetDirectory>
  echo "Storage sync complete."
}

# Access WSL via SSH (Assuming SSH is set up and configured)
access_via_ssh() {
  echo "Accessing WSL via SSH..."
  ssh <YourWSLUsername>@<WSL_IP_Address>
}

# Replace <YourWindowsUsername>, <WindowsDirectory>, <YourWSLUsername>, <TargetDirectory>, and <WSL_IP_Address> with your specific details.

# To use this script, save it as manage_nginx.sh and run it from your WSL terminal.
# Make sure to give it executable permissions with: chmod +x manage_nginx.sh
# Then execute the function you need, e.g., ./manage_nginx.sh update_system_and_nginx

```
``` bash
wls --shutdown
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
---

with passion by Kibsiam Mejia.
