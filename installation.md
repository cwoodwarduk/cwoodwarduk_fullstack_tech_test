
# Full Stack Tech Test

I took the opportunity with this tech test to use it as a learning opportunity to deepen my knowledge of React/Redux, 
as it is a stack I've only base familiarity with and I really wanted to give it go. Any feedback you have in review of 
this test would be much appreciated! 

## Setup - docker containers

If you are using Mac OS:
* You will need to install [Docker](https://store.docker.com/editions/community/docker-ce-desktop-mac)

If you are using Windows:
* [Docker toolbox](https://docs.docker.com/toolbox/toolbox_install_windows/) to use Docker and creating containers under windows
* put this whole folder inside `C/Users/Public` (to avoid having volume mounting issues)

Once docker is downloaded, run the newly installed docker application, and wait for the message ‘Docker is now up and running’ to appear on the docker window.

Now, from the top-level folder of the project, run `./bin/docker-run.sh` and it will download all the relevant images for each of the stacks and then spin up 3 containers:
* `car-charge-points-api` (for back end work, accessible on [http://localhost:8000/](http://localhost:8000/))
* `car-charge-points-api-docs` (for API documentation, accessible on [http://localhost:8001/](http://localhost:8001/))
* `car-charge-points-front` (for front end work, accessible on [http://localhost:8080/](http://localhost:8080/))

**NOTE: If using Windows & Docker toolbox, run `docker-machine ip` to get the IP address of your docker containers, then use this IP address instead of `localhost`, followed by the same ports as described above**
*(e.g. IP is `192.168.99.100`, API docs container will be accessible on [http://192.168.99.100:8001](http://192.168.99.100:8001))*


## Installation - Frontend

The frontend app can be started by cd-ing into the `/frontend` directory and running:

```bash
$ npm start
``` 

## Installation - API

After you have unzipped the project file, you will need to install Laravel Valet and its dependencies.

First install Homebrew:

```bash
$ brew install wget
```

Or update Homebrew:

```bash
$ brew update
```

Install/update PHP 7.4 via Homebrew:

```bash
$ brew install php
```

Ensure **[Composer](https://getcomposer.org/)** is installed and up-to-date. 

## Setting up the Database

Dummy data can be seeded through Artisan or, for simplicity, dummy data has been provided as an SQL dump in the 
`api/database/dummyData` directory.

In order to connect to the DB, open your .env file and alter the following section to match the local MySQL database that you will use:

```php
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=  
DB_USERNAME=  
DB_PASSWORD= 
```

## Routes

As per the tech test specification, the following routes are accessible:

### GET

To get a list of all Units and their associated Charges:

```
GET /units
```

To get a specific Unit and its associated Charges:

```
GET /units/{unitId}
```

### POST

To create a new Charge, associate it with a given Unit, and set that Unit's status to 'charging':

```
POST /units/{unitId}
```

### PATCH

To end a running Charge associated with a given Unit, and set that Unit's status to 'available':

```
PATCH /units/{unitId}/charges/{chargeId}
```
