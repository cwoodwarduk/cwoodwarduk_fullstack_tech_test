
# Full Stack Tech Test

I took the opportunity with this tech test to use it as a learning opportunity to deepen my knowledge of React/Redux, 
as it's a stack I've only base familiarity with and I really wanted to give it go. Any feedback you have in review of 
this test would be much appreciated! 

NOTES: 

The API was developed using a Laravel Valet implementation due to issues with my work machine using Docker. In order to get Valet to serve the api I had to implement some custom middleware to set the right CORS permissions to allow cross-origin requests between
this API and the React frontend application. Unfortunately this is the only implementation I could get working on my machine given time constraints!

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

Install Valet with Composer via:
 ```bash 
$ composer global require laravel/valet 
```

Make sure the `~/.composer/vendor/bin` directory is in your system's "PATH".

Run the installation via: 

```bash 
$ valet install
```

Once this is completed you can cd into the `/fullstack-test-master/api` directory and the following command to create a Valet symlink:

```bash
$ valet link api
```

The API should now be served via http://api.test . This URL will work with Postman. However you will need to install 
a browser plugin as an additional dependency for the handling of cross-origin CORS requests between the frontend and the API. 
I recommend using `Moesif Origin & CORS Changer` for Firefox & Chrome.

Please ensure that whatever browser plugin you use that it is turned on before attempting to use the app.

## Setting up the Database

Dummy data can be seeded through Artisan or, for simplicity, dummy data has been provided as an SQL dump in the 
`api/database/dummyData` directory.

In order to connect to a DB, open your .env file and alter the following section to match the local MySQL database that you will use:

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
