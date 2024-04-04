# Programs & Experiments

**Programs & Experiments** is a comprehensive repository for all public programs and experiments! Crafted with docker-compose for seamless operation on Debian/Linux.

## Development Website

[Programs & Experiments: Website](https://kibsaimmejia.github.io/Programs/): Docker Compose Nginx Server.

### Listed Programs

- [Restaurant Booking App: Development](https://github.com/KibsaimMejia/Programs/RestaurantBooking): Restaurant Booking App Development.

### Listed Experiments

- [Random: Development](https://github.com/KibsaimMejia/Programs/Random): Random Visualizations.

---

## Instructions - How to run actually

### Setup

This is the script inicluded in the ./setup.sh file.

**Caution**: This script requires administrative privileges. Always review scripts from the internet before running them with elevated permissions.

``` bash
# Clone the application repository
git clone https://github.com/KibsaimMejia/Programs/
cd Programs

# Update and upgrade the system
sudo apt-get update && sudo apt-get upgrade -y

# Install dependencies for Docker
sudo apt update && \
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common

# Add Docker’s official GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Add Docker repository to APT sources
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

# Update the package database with Docker packages from the newly added repo
sudo apt update

# Install Docker CE (Community Edition)
sudo apt install -y docker-ce docker-compose

# Start Docker and enable it to run at boot
sudo systemctl start docker && sudo systemctl enable docker

# Add your user to the Docker group to run Docker commands without sudo
sudo usermod -aG docker $USER

# Install Nginx
sudo apt install -y nginx

# Start Nginx and enable it to run at boot
sudo systemctl start nginx && sudo systemctl enable nginx

# Open Nginx configuration in a text editor. Replace 'nano' with your preferred editor if necessary.
# sudo nano /etc/nginx/sites-available/default
# OR for a more interactive GUI editor, you can use 'gedit' if you are in a graphical environment:
# sudo gedit /etc/nginx/sites-available/default
```

## Help

Is Everything working?
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
Install WSL (Windows: Right click on Start icon and select "Power Shell (Admin)")
``` powershell
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
Check Versions
``` bash
docker --version
docker-compose --version
```
---

with passion by Kibsiam Mejia.
