# Debian/Ubuntu Linux - Setup Steps

# Update and upgrade the system
sudo apt-get update && sudo apt-get upgrade -y

# Install Java 17
sudo apt install openjdk-17-jdk -y

# Verify Java installation
java -version

# Install Maven
sudo apt install maven -y

# Verify Maven installation
mvn -version

# Install Docker
sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release -y
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/debian \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin -y

# Verify Docker installation
docker --version

# Install Node.js and npm
curl -sL https://deb.nodesource.com/setup_16.x | sudo -E bash -
sudo apt-get install -y nodejs

# Verify Node.js and npm installation
node -v
npm -v

# Clone the application repository
git clone https://github.com/KibsaimMejia/Programs/
cd Programs/RestaurantBooking

# Backend setup
cd backend
mvn package # Packages the backend application. Assumes Maven is installed.

# Note: No explicit frontend setup command here since it's handled by Docker.

# E2E Testing setup
cd ../e2e
npm install # Installs e2e testing dependencies. Assumes Node.js and npm are installed.

# Running the application with Docker Compose
cd .. # Make sure to navigate back to the root directory of the project
docker-compose up --build # Builds and starts the Docker containers. Use 'sudo' if necessary.
# Clone the application repository
git clone https://github.com/KibsaimMejia/Programs/
cd Programs/RestaurantBooking

# Backend setup
cd backend
mvn package # Packages the backend application. Assumes Maven is installed.

# Note: No explicit frontend setup command here since it's handled by Docker.

# E2E Testing setup
cd ../e2e
npm install # Installs e2e testing dependencies. Assumes Node.js and npm are installed.

# Running the application with Docker Compose
cd .. # Make sure to navigate back to the root directory of the project
docker-compose up --build # Builds and starts the Docker containers. Use 'sudo' if necessary.

