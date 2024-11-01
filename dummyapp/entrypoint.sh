#!/bin/bash

# Notify the user that the scipt is waiting for MySQL to be ready
echo "Waiting for MySQL to be ready..."

MYSQL_HOST=${MYSQL_DB_NAME:-db}

# Loop until MySQL is accessible on port 3306
while ! nc -z "$MYSQL_HOST" 3306; do
  sleep 1 # wait 1 second before checking again
done

# Notify the user that MySQL is ready and migrations are starting
echo "MySQL is up - running migrations..."
python manage.py migrate # Apply Django database migrations

# Notify the user that Djanog server is starting
echo "Starting Django Server..."
exec "$@" # Replace the shell with the Django server process