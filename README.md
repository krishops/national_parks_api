# National Park API

#### By Kristen Hopper

## Technologies Used

* _Ruby_
* _Rails_
* _Postgres_
* _Docker_

## Description

This project demonstrates the student's ability to build an API using Ruby and Rails.

## Setup/Installation Requirements

To use this project, you will first need to install [Docker](https://docs.docker.com/get-docker/). Once it is installed, run `docker pull ruby:2.6.5` in the terminal to pull and install the correct image of Ruby on your machine.

You can now clone the project by running `git clone https://github.com/krishops/national_parks_api.git` in the terminal.

Within the root directory of the project, run `docker-compose up --build` in the terminal to build the project. This will also start a local server that can be accessed in the browser at localhost:3000. 

Ctrl-C out of the server and run the following commands:

`docker-compose run web bundle exec rails generate rspec:install`
      
      Type 'n' when prompted to keep the project's updated spec helper files.

`docker-compose run web bundle exec rake db:create`

`docker-compose run web bundle exec rake db:migrate`

`docker-compose run web bundle exec rake db:test:prepare`

`docker-compose run web bundle exec rake db:seed`

You can now restart the server at localhost:3000 by running `docker-compose up`. The API endpoint is accessed in Postman or in the browser at localhost:3000/parks.

## Available API Endpoints

http://localhost:3000/parks returns all parks in the database

http://localhost:3000/stateparks returns only state parks

http://localhost:3000/nationalparks returns only national parks

http://localhost:3000/parks?location=STATE-ABBREVIATION replace STATE-ABBREVIATION with two-letter state abbreviation code to return only parks found in that state.

## Project Testing

Within the root directory, run the command `docker-compose run web bundle exec rspec` to run the rspec tests of the project.
Testing should output: **10 examples, 0 failures**

## Known Bugs

Route tests for PUT and DELETE requests do not run successfully.

## License

[MIT](https://opensource.org/licenses/MIT)

Copyright (c) Kristen Hopper

## Contact Information

hopperdavis@gmail.com