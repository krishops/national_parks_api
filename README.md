# National Park API

#### By Kristen Hopper

## Technologies Used

* _Ruby_
* _Rails_
* _Postgres_
* _Docker_

## Description

This project demonstrates the student's ability to build an API using Ruby and Rails.

## Setup/Installation

To use this project, you will first need to install [Docker](https://docs.docker.com/get-docker/). Once it is installed, run `docker pull ruby:2.6.5` in the terminal to pull and install the correct image of Ruby on your machine.

You can now clone the project by running `git clone https://github.com/krishops/national_parks_api.git` in the terminal.

Within the root directory of the project, run `docker-compose up --build` in the terminal to build the project. This will also start a local server that can be accessed in the browser at localhost:3000. 

Ctrl-C out of the server and run the following commands in order:

 1.     docker-compose run web bundle exec rails generate rspec:install 
      - Type 'n' when prompted to keep the project's updated spec helper files.

 2.     docker-compose run web bundle exec rake db:create

 3.     docker-compose run web bundle exec rake db:migrate

 4.     docker-compose run web bundle exec rake db:test:prepare

 5.     docker-compose run web bundle exec rake db:seed

You can now access the seeded database by running `docker-compose up` in the terminal to restart the server at localhost:3000. The API endpoint is accessed in [Postman](https://www.postman.com/downloads/) or in the browser at localhost:3000/parks. Specific API requests can be made in Postman.

## Available API Endpoints

API Requests can be made using Postman.

### <u>GET and DELETE REQUESTS</u>

| Type | Request | Description |
| ------ | ------ | -------|
| GET | /parks | returns all parks in the database |
| GET | /parks?page=PAGE# | replace PAGE# with a specific number, returns a specific page of the park entries by 20 entries per page |
| GET | /stateparks | returns only state parks |
| GET | /nationalparks | returns only national parks|
| GET | /parks?location=STATE-ABBREVIATION | replace STATE-ABBREVIATION with two-letter state abbreviation code to return only parks found in that state (ex. /parks?location=CA). |
| GET | /parks?name=PARK-NAME | replace PARK-NAME with the name of the park to return the park's entry (ex. /parks?name=Yosemite) |
| GET | /parks/PARKID | replace PARKID with entry id, returns park entry |
| DELETE | /parks | <span style="color:red">**DANGER:**</span> deletes all parks in the database |
| DELETE | /stateparks | <span style="color:red">**DANGER:**</span> deletes all state park entries |
| DELETE | /nationalparks | <span style="color:red">**DANGER:**</span> deletes all national park entries |
| DELETE | /parks/PARKID | <span style="color:red">**DANGER:**</span> replace PARKID with entry id, deletes an entry by id |

Successful DELETE requests will return a 200 OK status and the notice:

      {
        "message": "This entry has been deleted"
      }

### <u>PUT Requests</u>

To make a PUT request in Postman start with the base URL of `http://localhost:3000/parks/PARKID?` and replace PARKID with the id of the entry you which to update.

Following `?` in the URL you can specify the entry parameters, separated by `&`, that you wish to update or you can specify them in the query fields.

Ex: `http://localhost:3000/parks/1?name=Yosemite`

<span style="color:yellow">Note: Either the `national` or `state` parameter must be set to TRUE for each entry. They cannot both be set to TRUE.</span>

A successful PUT request will receive a '200 OK' status result and the notice:

      {
        "message": "Park successfully updated"
      }

### <u>POST Requests</u>

POST requests in Postman operate similarly to PUT requests.

To make a POST request in Postman start with the base URL of `http://localhost:3000/parks?`. No entry id is specified, since you are adding a new entry to the database.

Following `?` in the URL you can set the entry parameters, separated by `&`, to create the entry. Name and location must be set and either national or state needs to be set to true.

Ex: `http://localhost:3000/parks?name=Yosemite&location=CA&national=true`

<span style="color:yellow">Note: Either the `national` or `state` parameter must be set to TRUE for each entry. They cannot both be set to TRUE.</span> 

If you do not specify true for either the `state` or `national` parameter, or if you set both to true, you will get a 401 Unauthorized status and the notice:

      {
        "message": "Set either national or state parameter to true"
      }

A successful POST request will receive a '201 Created' status result and display the new entry.

Example:

      {
        "id": 100,
        "name": "Yosemite",
        "location": "CA",
        "national": true,
        "state": false
      }

## Project Testing

Within the root directory, run the command `docker-compose run web bundle exec rspec` to run the rspec tests of the project.
Testing should output: **11 examples, 0 failures**

## Known Bugs

Request tests for PUT and DELETE requests do not run successfully.

## License

[MIT](https://opensource.org/licenses/MIT)

Copyright (c) Kristen Hopper

## Contact Information

hopperdavis@gmail.com