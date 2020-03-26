# docker-cronjob

## Usage:
````
# Build ([dynamic] | [light] | [oneline])
docker build --rm -t smd00/smd00-cron dynamic

# Run
docker run -it smd00/smd00-cron

# List 
docker ps

# SSH into Container ID
ID=a5ayfe9rf7b0
docker exec -it $ID bash
````

## Cron tab assitant: 
- https://crontab.guru/
