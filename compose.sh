# source .env
sudo docker rm -f reverse-proxy || true
# Build
sudo docker compose build
sudo docker compose up --force-recreate -d