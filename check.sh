#!/bin/bash

# Check if cluster.yml file exists
if [ -f "cluster-haproxy.yml" ]; then
    # Start cluster using docker-compose
    docker-compose -f cluster-haproxy.yml up -d

    # Check if docker containers exist with the specified prefix (docker-documentserver_onlyoffice-documentserver_)
    container_prefix="docker-documentserver_onlyoffice-documentserver_"

    # Generate the backend block configuration
    backend_block="backend app
balance roundrobin"

    # Loop through the container numbers (1 to 9)
    for ((i=1; i<=9; i++)); do
        # Create the container name
        container_name="${container_prefix}${i}"

        # Check if the container exists
        if docker ps -a --format "{{.Names}}" | grep -q "$container_name"; then
            # Add the server entry to the backend block for haproxy
            backend_block+="\n    server app${i} ${container_name}:80"
        fi
    done

    # Append the backend block to haproxy.cfg file
    echo -e "\n$backend_block" >> ./haproxy.cfg

    # Restart the onlyoffice-haproxy container
    docker restart onlyoffice-haproxy
    
else
    # Check if docker containers exist with the specified prefix (docker-documentserver-onlyoffice-documentserver-)
    container_prefix="docker-documentserver-onlyoffice-documentserver-"

    # Generate the backend block configuration
    backend_block="backend app
balance roundrobin"

    # Loop through the container numbers (1 to 9)
    for ((i=1; i<=9; i++)); do
        # Create the container name
        container_name="${container_prefix}${i}"

        # Check if the container exists
        if docker ps -a --format "{{.Names}}" | grep -q "$container_name"; then
            # Add the server entry to the backend block for haproxy
            backend_block+="\n    server app${i} ${container_name}:80"
        fi
    done

    # Append the backend block to haproxy.cfg file
    echo -e "\n$backend_block" >> ./haproxy.cfg

    # Restart the onlyoffice-haproxy container
    docker restart onlyoffice-haproxy
fi