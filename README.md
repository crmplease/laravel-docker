# Laravel Dockerfiles

## Requirements
Install sudo, [docker](https://docs.docker.com/engine/installation/) and [docker-compose](https://docs.docker.com/compose/install/).

Don't forget to add user to `docker` group:
```bash
sudo adduser <user> docker
```

## First sterps
1. Create your laravel project
2. Creare `docker` directory
3. Pull this repository into `docker` directory
4. Make `storage` directory writeable for everyone
5. Run `docker-compose`

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
You use `up` helper script:
```bash
docker/up composer install
```

You can create shortcut at root of your project:
```bash
ln -s docker/up laravel
```

Run:
```bash
laravel composer update
laravel artisan migrate:refresh --seed
```

P.S. Default laravel database host is `localhost`. At docker infrastructure host is `database`. 
So you must specify it at `config/database.php` or in `.env` file:
```bash
DB_HOST=database
```