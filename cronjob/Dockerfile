FROM ubuntu:latest

RUN apt-get update && apt-get -y install cron

# Add backupjob 
COPY backupjob /etc/cron.d/backupjob

# Change permissions of the backupjob file
RUN chmod 0644 /etc/cron.d/backupjob

# Apply cron job
RUN crontab /etc/cron.d/backupjob

# Create a file to log 
RUN touch /var/log/cron.log

# Run the command on container startup
CMD cron && tail -f /var/log/cron.log