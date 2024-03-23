docker build -t crustacean_frontend ./frontend
docker run --rm -p 80:80 -d crustacean_frontend