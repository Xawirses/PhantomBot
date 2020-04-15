# Phantombot

[![](https://images.microbadger.com/badges/version/xawirses/phantombot.svg)](https://microbadger.com/images/xawirses/phantombot "Get your own version badge on microbadger.com")

## Supported tags and respective Dockerfile links
- 3.1.2, stable, latest [(3.0.0/Dockerfile)](https://github.com/Xawirses/PhantomBot/blob/master/3.0.0/Dockerfile)
- 3.0.0 [(3.0.0/Dockerfile)](https://github.com/Xawirses/PhantomBot/blob/master/3.0.0/Dockerfile)

## How to use this image
### Setup Process
if you have already the configuration, ignore this step
```
sudo mkdir -p /opt/phantombot/{config,dbbackup,logs}

sudo docker run -it \
  -p 6667:6667 \
  -p 25001-25005:25001-25005 \
  -v /opt/phantombot/config:/phantombot/config \
  -v /opt/phantombot/dbbackup:/phantombot/dbbackup \
  -v /opt/phantombot/logs:/phantombot/logs \
  --name phantombot \
  xawirses/phantombot:stable
```
### Docker CMD
```
sudo docker run -d \
  -p 6667:6667 \
  -p 25001-25005:25001-25005 \
  -v /opt/phantombot/config:/phantombot/config \
  -v /opt/phantombot/dbbackup:/phantombot/dbbackup \
  -v /opt/phantombot/logs:/phantombot/logs \
  --name phantombot \
  --restart=always \
  xawirses/phantombot:stable
```
### Docker-compose
```
phantombot:
  image: "xawirses/phantombot:stable"
  restart: always
  ports:
    - "6667:6667"
    - "25001-25005:25001-25005"
  volumes:
    - "/opt/PhantomBot/config:/phantombot/config"
    - "/opt/PhantomBot/dbbackup:/phantombot/dbbackup"
    - "/opt/PhantomBot/logs:/phantombot/logs"
```
## Ports
* 6667
* 25001-25005

## Key Volumes
* /phantombot/config
* /phantombot/dbbackup
* /phantombot/logs

