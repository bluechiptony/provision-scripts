#docker 
echo "Installing Docker ..." &&
sudo apt update &&
sudo apt install apt-transport-https ca-certificates curl software-properties-common &&
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add - &&
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable" &&
sudo apt update &&
#apt-cache policy docker-ce &&
sudo apt install docker-ce &&
sudo usermod -aG docker ${USER} &&
echo "Docker install complete !" &&


#docker compose 
echo "Installing Docker compose ..." &&
sudo curl -L "https://github.com/docker/compose/releases/download/1.27.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose &&
sudo chmod +x /usr/local/bin/docker-compose &&
echo "Docker compose install complete !" &&

#nginx 
echo "Installing nginx ..." &&
sudo apt update &&
sudo apt install nginx &&
echo "Nginx install complete !" &&


#Certbot
echo "Installing certbot ..." &&
sudo apt install certbot python3-certbot-nginx &&
echo "Certbot install complele ..."




