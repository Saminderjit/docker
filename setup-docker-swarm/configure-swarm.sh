## TODO: 
	# Add supprot to dynamically pull privateip

# docker manager
docker swarm init --advertise-addr [PRIVATE_IP]

# docker worked node
docker swarm join --token [TOKEN] [PRIVATE_IP_MGR]:2377
