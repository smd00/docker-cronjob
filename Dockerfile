FROM ubuntu:latest
LABEL maintainer="daniel@montoya.com.au"

WORKDIR /app
COPY . .

#Install Cron
RUN apt-get update && apt-get -y install cron

# Copy smd00-cron file to the cron.d directory
COPY smd00-cron /etc/cron.d/smd00-cron

# Copy script file to the container
COPY helloworld.sh helloworld.sh

# Give execution rights on the cron job
RUN chmod 0644 /etc/cron.d/smd00-cron

# Give rights to the script file
# RUN chmod 0744 helloworld.sh
RUN chmod +x ./helloworld.sh

# Apply cron job
RUN crontab /etc/cron.d/smd00-cron

# Create the log file to be able to run tail
RUN touch /var/log/cron.log

# Run the command on container startup
CMD cron && tail -f /var/log/cron.log