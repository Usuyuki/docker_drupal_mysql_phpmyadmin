<!-- @format -->

# docker_drupal_mysql_phpmyadmin

Drupal と PHPMyAdmin が動く docker 雛形です。

## ローカルホスト

ローカルホスト WordPress
http://localhost:1010

ローカルホスト PHPMyAdmin
http://localhost:1111

## コマンド

コンテナ作成&起動

```
docker-compose up -d
```

コンテナの中に入る

```
docker-compose exec wordpressなど bash
```

コンテナ停止する

```
docker-compose stop
```

コンテナ削除する

```
docker-compose down
```

## 参考記事

かなり加筆修正して利用してます。

https://pu10g.com/node/38
