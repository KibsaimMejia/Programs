# Linux Setup

# Clone the application repository
git clone https://github.com/KibsaimMejia/Programs/
cd Programs

# Update and upgrade the system
sudo apt-get update && sudo apt-get upgrade -y
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
