issue コミットメモ

# やること

## 準備

### モデルとコントローラーを作成

```
docker-compose run --rm backend bundle exec rails generate scaffold Post name:text
docker-compose run --rm backend bundle exec rake db:migrate
```
