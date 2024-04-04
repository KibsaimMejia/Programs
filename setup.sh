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
sudo gedit /etc/nginx/sites-available/default
