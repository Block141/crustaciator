docker build -t crustacean_api ./api
docker run --name crustacean_api --rm -p 8000:8000 -d crustacean_api