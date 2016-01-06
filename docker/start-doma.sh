#######################################################
# Start Docker Machine
#######################################################
docker-machine start default
eval $(docker-machine env default)

#######################################################
# Export weaves $DOCKER_HOST to every shell to make docker compose work
#######################################################
if [ -e /usr/local/bin/weave ]; then 
    eval $(weave env) 
fi

