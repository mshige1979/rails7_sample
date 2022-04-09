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
docker-compose run --rm backend bundle exec rake db:create
docker-compose run --rm backend bundle exec rake db:migrate
```

### up

```
docker-compose up -d
```

### destroy

```
docker-compose down --rmi all --volumes --remove-orphans
```
