docker build -t crustacean_frontend ./frontend
docker run --name crustacean_frontend --rm -p 80:80 -d crustacean_frontend