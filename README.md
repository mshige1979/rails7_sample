# README

## setup

### git clone

```
git clone https://github.com/mshige1979/rails7_sample.git
```

### build

```
docker-compose build
docker-compose up -d db
docker-compose run --rm backend bundle install
```

### DB

```
dokcer-compose run --rm backend bundle exec db:create
dokcer-compose run --rm backend bundle exec db:migrate
```

### up

```
docker-compose up
```

### destroy

```
docker-compose down --rmi all --volumes --remove-orphans
```
