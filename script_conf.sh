#!/bin/bash


install_Appach () {
sudo apt-get install apache2
sudo systemctl restart apache2
#/etc/apache2/sites-enabled/000-default.conf
sudo  mkdir /var/www/html/2048
sudo chmod  -R 755 /var/www/html/2048
}

upload_code () {
cd /var/www/html/2048
sudo  git init
read -p "Entrer le lien de code source que vous voulez Chargé: "  URL
sudo  git pull $URL
}

acc_srv_web () {
  # Obtient l'adresse IP publique de la machine
  ip_address=$(curl -s icanhazip.com)
  # Affiche le lien du site web
  echo "Le site web est accessible à l'adresse : http://$ip_address/2048"
}

install_Appach
upload_code
acc_srv_web