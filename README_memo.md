issue コミットメモ

# やること

## 準備

### モデルとコントローラーを作成(#1)

```
docker-compose run --rm backend bundle exec rails generate scaffold Post name:text
docker-compose run --rm backend bundle exec rake db:migrate
```

### モデルとコントローラーを作成(#3)

```
docker-compose run --rm backend bundle exec rails generate scaffold Comapany name:text
docker-compose run --rm backend bundle exec rake db:migrate
```
