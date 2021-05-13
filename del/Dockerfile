FROM drupal:latest

# Drushインストール
RUN composer global require drush/drush \
    && ln -s /root/.composer/vendor/bin/drush /usr/local/bin/drush \
    && drush --version

# Drupal Consoleインストール
RUN composer require drupal/console \
    && ln -s /opt/drupal/vendor/bin/drupal /usr/local/bin/drupal \
    && drupal --version

# 初回起動時にDrupalをインストールする用のshellを配置
COPY docker-entrypoint.sh /tmp
RUN sed -i 's/\r//g' /tmp/docker-entrypoint.sh
ENTRYPOINT ["/tmp/docker-entrypoint.sh"]
CMD ["apache2-foreground"]