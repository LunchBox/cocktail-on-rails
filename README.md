# Cocktail on Rails

### development

```
$ sudo apt install libvips imagemagick
$ npm install -g sass esbuild
$ brew install redis 
$ sudo apt install redis
$ ./bin/bundle install
$ ./bin/rails turbo:install
$ ./bin/rails turbo:install:redis
$ ./bin/rake db:migrate
$ ./bin/dev
```


### setup deployment

```
$ cap production deploy:check
$ scp config/master.key user@server:/location/to/master.key
```

login to server

```
$ sudo ls
$ EDITOR=vim sudoedit /etc/sudoers.d/92-cocktail-on-rails-puma
```

```
geek   ALL=(ALL) NOPASSWD: /bin/mv
geek   ALL=(ALL) NOPASSWD: /bin/cp
geek   ALL=(ALL) NOPASSWD: /bin/systemctl
geek   ALL=(ALL) NOPASSWD: /bin/ln
geek   ALL=(ALL) NOPASSWD: /bin/systemctl restart puma_cocktail-on-rails_production
geek   ALL=(ALL) NOPASSWD: /bin/systemctl start puma_cocktail-on-rails_production
geek   ALL=(ALL) NOPASSWD: /bin/systemctl stop puma_cocktail-on-rails_production
geek   ALL=(ALL) NOPASSWD: /bin/systemctl status puma_cocktail-on-rails_production
```

```
$ cap production puma:config
$ cap production puma:systemd:config puma:systemd:enable
$ cap production puma:nginx_config
```


remove these from sudoers.d file
```
# geek   ALL=(ALL) NOPASSWD: /bin/mv
# geek   ALL=(ALL) NOPASSWD: /bin/cp
# geek   ALL=(ALL) NOPASSWD: /bin/systemctl
# geek   ALL=(ALL) NOPASSWD: /bin/ln
```
