# Laravel Example Project

The purpose of this project is to quickly load a skeleton version of Laravel (v5.7.19), which has been configured to use Docker for quick start up. Interally we're using Nginx and MariaDB, simply for ease of use.


## Getting Started

This project uses Docker to configure local environments, it should contain everything you need for local development of a Laravel application. You can read more about [docker](https://docs.docker.com/) here.

### Project Start

A local environment can be quickly booted up by navigating to the project directory, and running:

```
docker-compose up
``` 

In practice, this will use the `docker-compose.yml` file inside of the project, and spin up a environment using the various config options specified.

Once the script has finished it's set-up, you should now be able to access the project using: [http://localhost/](http://localhost/).


## Inside the Container

Should you need to be inside of the docker container, for example to run artisan commands, or composer commands, this can be done using some more docker commands.

**Option 1 - Outside In**

Due to the way Docker has been set-up using this project, we can run commands from outside the container if we attach a clever prefix before running a command:

```
docker-compose exec app
```

For example, to get the version of laravel which is installed, we can do:

```
docker-compose exec app php artisan --version
```

**Option 2 - Into the Image**

First, using a new terminal window, lookup all running docker processes:

```
docker ps 
```

From here, you should copy the Container ID of the web server process which is running, and use the following command, substituting in your ID:

```
docker exec -it <YOUR_CONTAINER_ID> bash
```

You should now be inside of your web server, this is the equivalent of SSH-ing into a real server. From this point you should be able to run any commands you would on any other server.