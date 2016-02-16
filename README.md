# Laravel Dockerfiles

## First sterps
1. Create your laravel project
2. Creare `docker` directory
3. Pull this repository into `docker` directory
4. Run `docker-compose`

## Usage
### Command-line usage
```bash
# Run containers
docker-compose -f docker/docker-compose.yml up -d

# Run composer
docker-compose -f docker/docker-compose.yml run composer install

# Run artisan
docker-compose -f docker/docker-compose.yml run artisan migrate:install
```
### Bash helper
Touch `myapp` file at root of your project with contents below:
```bash
#!/bin/bash

if [[ ! -f build.lock ]]; then

    docker-compose -f docker/docker-compose.yml up -d
    
    touch build.lock

fi

docker-compose -f docker/docker-compose.yml run $@
```
Make it executable:
```bash
chmod a+x myapp
```
Run:
```bash
myapp composer update
myapp artisan migrate:refresh --seed
```

P.S. Default laravel database host is `localhost`. At docker infrastructure host is `database`. So must specify it at `config/database.php` or in `.env` file:
```bash
DB_HOST=database
```
