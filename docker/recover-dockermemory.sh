# Remove Docker exited containers
docker rm `docker ps -a | grep Exited | awk '{print $1 }'`

# Remove Docker images not being used currently
docker rmi -f `diff -u <(docker images -q) <(docker images -qa) | grep -E "^\+" | grep -v "+++" | sed 's/\+//g'`
