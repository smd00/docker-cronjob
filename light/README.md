# docker-cronjob-light

## Usage:
````
# Build
docker build --rm -t smd00/smd00-cron-light .

# Run
docker run -it smd00/smd00-cron-light

# List 
docker ps

# SSH into Container ID
ID=a5ayfe9rf7b0
docker exec -it $ID bash
````