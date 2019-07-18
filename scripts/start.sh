#!/bin/bash

# Put docker containers down
docker-compose down

# Check if log exists
echo "" > 'storage/logs/laravel.log'

# Check if env exists, if not copy it
if [ ! -f .env ]; then
    cp .env.example .env
fi

# Bring docker up detatched from output
docker-compose up -d

# Install deps
docker exec -it app /bin/bash -c "cd /var/www && composer install"
docker exec -it app /bin/bash -c "cd /var/www && npm install"

# Generate key
docker exec -it app /bin/bash -c "cd /var/www && php artisan key:generate"
docker exec -it app /bin/bash -c "cd /var/www && php artisan migrate"

# Generate key
docker attach app
