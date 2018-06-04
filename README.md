# README

## setup
docker build -t api .

docker network create api

docker run -d -e POSTGRES_USER='api' -e POSTGRES_PASSWORD='api' --net=api --name db postgres

docker run -it -e POSTGRES_USER='api' -e POSTGRES_PASSWORD='api' --net=api api rake db:setup

docker run -it -e POSTGRES_USER='api' -e POSTGRES_PASSWORD='api' --net=api -p 3000:3000 --name app api

## api call

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
