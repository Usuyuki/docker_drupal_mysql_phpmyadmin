#!/bin/sh

# 初回起動時Drupalインストールを走らせる
if [ ! -d "/tmp/check" ]; then
  mkdir /tmp/check

  mkdir -p /opt/drupal/web/sites/default/files/translations/
  curl https://ftp.drupal.org/files/translations/all/drupal/drupal-${DRUPAL_VERSION}.ja.po \
    -o /opt/drupal/web/sites/default/files/translations/drupal-${DRUPAL_VERSION}.ja.po

  curl https://ftp.drupal.org/files/translations/all/drupal/default.settings.php \
    -o /opt/drupal/web/sites/default/default.settings.php
  sleep 30s && drush si -y ${PROFILE} \
    --account-name="admin" --account-pass="admin" --account-mail="test@example.com" \
    --db-url="db://user:user_pass_tekitou@mysql:3306/drupal_db" \
    --site-mail="test@example.com" --site-name="Drupal Test" \
    --locale="ja"
  drush config-set system.site uuid e707291e-7532-46d1-822c-0983cb676f8d
  drush config-set language.entity.ja uuid 0a2ddbab-8662-4d8a-bc0b-e20dd875e041
  drush cim

fi

exec "$@"