#Making directories for Movies and TV
sudo mkdir /mnt/media/media/movies /mnt/media/media/tv

#Opening the Plex Port in the Linux FW
sudo ufw allow 32400

#Decrypting .env file
ansible-vault decrypt .env

#Starting Containers
docker compose up -d

echo "Deployment Complete.jamesblows.jpg"
