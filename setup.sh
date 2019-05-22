mkdir portainer portainer/data

echo 'Create docker web network'
docker network create --scope=swarm web

echo 'Running chmod on acme.json'
chmod 600 ./traefik/acme.json

echo 'Starting services....'
docker stack deploy proxy --compose-file docker-compose.yml

echo 'All services up I think....'