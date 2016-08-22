# Hubot for OTT chat

## Install

1. Prerequisite

    a. git

    b. nodeJS

    c. redis-server

2. Install

    a. `sudo npm install -g yo generator-hubot`

    b. `yo hubot`. Be sure not to overwrite existing files.

    c. Choose `rocketchat` as adapter when asked

    d. `npm install` for dependencies

3. SSL

Rocketchat adapter cannot connect to an https server. In order to be able to
still use it, buildpacks and [stunnel](http://stunnel.org/) are needed.
```
heroku buildpacks:set https://github.com/timshadel/heroku-buildpack-stunnel.git
heroku buildpacks:add https://github.com/heroku/heroku-buildpack-nodejs.git
```

Use conf/stunnel.conf to configure stunnel and then connect to localhost:8888.
With this, the bot will be able to connect to localhost and stunnel will
redirect to the secure chat.

4. Deploy

Heroku remote URL is `git@heroku.com:hal9000-arkena-bot.git`

## Use

1. Scripts

Scripts are coffee scripts. Here is a list of communautary scripts:
[hubot script catalog](https://hubot-script-catalog.herokuapp.com/)

Here is the documentation for scripting:
[scripting](https://github.com/github/hubot/blob/master/docs/scripting.md)

2. Start and variables

The file `start.sh` contains the needed environment variables. New ones should
be added here. Simply type `./start.sh` to launch the bot

For heroku, the variables need to be set separately. A scheduler also needs to
be set to wake up the bot each morning. See [deploying on
heroku](https://github.com/hubot-scripts/hubot-heroku-keepalive) and
[hubot-heroku-keepalive](https://github.com/hubot-scripts/hubot-heroku-keepalive).

For gitlab project listing, the account linked is not an OTTSM only account.
Use environment variable `GITLAB_NAMESPACE` (set to `OTTSM`) to only show
projects from OTTSM group.

3. Room IDs

Probably due to the rocketchat adapter, the room IDs are not their names. they
need to be retrieved manually (look at the logs when the bot connects). They
probably only change when a room is closed (no one in there). If the bot cannot
send anymore a message to a room, check the room ID.
```
#osm: bckJYshcTQKkrjHG2
#osm-builds: hpt2WTqxdGauiHpHu
#osm-support: vQQzHs43qYErAXCfB
#general: GENERAL
#funny: 3qFTqzEQPe42yXYdH
#sandbox2: QwyoxgTuxzqPJuLqR
```
