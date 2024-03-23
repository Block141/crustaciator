docker build -t crustacean_api .
docker run --rm -p 8000:8000 -d crustacean_api