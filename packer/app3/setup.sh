sleep 30
sudo apt-get update -y
sudo apt-get install nginx -y
systemctl enable nginx
sudo ufw allow ssh
sudo ufw allow http
sudo ufw allow https
sudo ufw enable

