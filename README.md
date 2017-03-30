# craftdocker

A Craft base running on sealink/phpdocker

*   uses php7-fpm & nginx
*   uses imageMagick and php-redis
*   uses pansophy to setup configuration files during deployment


## Changes in Fork

*   Uses localhost:8080 instead of craft.dev:80, because osx doesn't like that
*   Uses a local development folder on the host for craft files


## Installing:

Open a terminal:

```bash
APPNAME=craft-1
git clone https://github.com/benevolenttech/craftdocker.git $APPNAME
cd $APPNAME/app
wget https://download.craftcdn.com/craft/2.6/2.6.2967/Craft-2.6.2967.zip
unzip Craft-2.6.2967.zip
cd ../
cp -rf craft.config/* app/craft/config
docker-compose up
```


## Running

```bash
cd $APPNAME
docker-compose up
```

Rock and roll!

## Pro-Tip

Add this to your .bashrc and/or .profile for easy ssh
```bash
alias docker-ssh='docker exec -i -t `docker ps --filter name=_web -q` /bin/bash'

alias docker-sync='container=`docker ps --filter name=_web -q`; docker cp app $container:/; docker exec $container /bin/bash -c "chown -R nginx:nginx /app"'

```

