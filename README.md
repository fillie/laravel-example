# Laravel Example and Test Project

The purpose of this project is to quickly load a skeleton version of Laravel (v5.7.19), which has been configured to use Docker for quick start up. Interally we're using Nginx and Mysql, simply for ease of use. The bottom of this readme also contains some tasks, useful for interviewing.


## Getting Started

This project uses Docker to configure local environments, it should contain everything you need for local development of a Laravel application. You can read more about [docker](https://docs.docker.com/) here.

### Project Start

A local environment can be quickly booted up by navigating to the project directory, and running:

```
./scripts/start.sh
``` 

In practice, this will call `docker-compose up` and some other added commands when needed. The script should install any npm and php dependencies for you. As well as generating encyryption keys and running any required database migrations for you.

Once the script has finished it's set-up (once the database migrations are complete), you should now be able to access the project using: [http://localhost/](http://localhost/).


## Inside the Container

Should you need to be inside of the docker container, for example to run artisan commands, or composer commands, this can be done using some more docker commands. By default this project will actually create three containers, one to run nginx (`nginx`), one to run a mysql database (`db`), and one finally run php-fpm (`app`). It is the latter you're most likely to be interested in.

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

First, using a new terminal window, lookup all running docker contaisner:

```
docker ps 
```

From here, you should copy the Container ID of the php-fpm (app) process which is running, and use the following command, substituting in your ID:

```
docker exec -it <YOUR_CONTAINER_ID> bash
```

You should now be inside of your web server, this is the equivalent of SSH-ing into a real server. From this point you should be able to run any commands you would on any other server.

## Your Task

You have been tasked by a customer to create a contact form for their buisness. The contact form is to to capture the following details from
the user:
* **Firstname**
* **Surname**
* **Email**
* **Telephone**
* **Address**
* **A Message**

All of this information should be saved and viewable in a database.
Whilst we would like to see some styling of the form, this is not a priority, and you won't be judged on aesthetics.

### Other Objectives

Whilst the above is the most important task as it allows us to assess your code, we'd also like you to have a go at some of the following.

* **Addition of unit tests**
* **Well thought out database schema changes**
* **Code Quality checks**

Please treat this task as if it was a real project, as such the project should be set up as a git repo, as well as containing a suitable
branching method. Don't worry about setting this up so it pushes remotely, a local repo is fine.
