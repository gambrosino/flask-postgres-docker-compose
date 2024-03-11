## Flask + Postgres docker compose

This is a simple compose file that allows to run a flask application connected with a postgres database.

Requirements: Docker and the compose plugin


### Instructions:

* Clone your flask application in the root folder.
* Copy `sample.env` to `.env`
* Set the env variables as needed
    ** The var `WORKDIR` is a relative path to the flask app folder. For example: `WORKDIR=./leader-db`
* Run: `$ docker compose up --build` to build and run the containers.
* In order to see the app in the browser go to: `http://localhost:[wherever port you specified in FLASK_PORT .env's variable]`
* Next time you want to run the app you can spin up the container by going to the root directory of this repo and run: `$ docker compose start`

Note: you can import the db using the command line by placing a sql dump into the data/db/import folder of that will be generated after the containers creation. That folder maps to the /home directory inside the db container. Once you have the sql file inside the folder you can ssh into the container (`docker exec -it DB_CONTAINER_NAME|DB_CONTAINER_ID bash`) and import the database manually.