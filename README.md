<!-- @format -->

# docker_drupal_mysql_phpmyadmin

Drupal と PHPMyAdmin が動く docker 雛形です。

## ローカルホスト

ローカルホスト Drupal
http://localhost:2020

ローカルホスト PHPMyAdmin
http://localhost:2222

## drupal の初期設定

### データベースのセットアップ

データベース名:drupal_db
データベースのユーザー名:user
データベースのパスワード:user_pass_tekitou
ホスト :db
ポート:3306

### 他

指示に従うだけ

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

よくわからないキャッシュ的なのも消す

```
dc down --remove-orphans
```

```
dc exec drupal bash
```

## 参考記事

かなり加筆修正して利用してます。

https://github.com/docker-library/drupal/issues/3
https://pu10g.com/node/38
https://qiita.com/nasuB7373/items/523f1392d87dffb5521d
https://qiita.com/ShinKano/items/9a885473adda333ec375

opt/drupal/web/

var/www/html/
