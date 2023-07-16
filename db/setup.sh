docker build -t people_db ./db
docker run --name pg_db --rm -e POSTGRES_PASSWORD=password -p 5444:5432 -d people_db