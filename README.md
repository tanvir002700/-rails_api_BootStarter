# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

api call

curl -d '{"email": "test@test", "password": "1234567"}' \
     -H "Content-Type: application/json" \
     -X POST \
     http://localhost:3000/api/v1/sign_in/


curl -d '{"name": "test", "email": "test@test.com", "password": "1234567", "password_confirmation": "1234567"}' \
     -H "Content-Type: application/json" \
     -X POST \
   http://localhost:3000/api/v1/sign_up/

curl -d '{"post": {"name": "test"}}' \
     -H "Content-Type: application/json" \
     -H "Authorization: token"\
     -X POST \
     http://localhost:3000/posts/
{"id":20,"name":"test","description":null,"created_at":"2018-06-02T06:06:36.708Z","updated_at":"2018-06-02T06:06:36.708Z"}% 
