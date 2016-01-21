# Hubot for OTT chat

## Instal

1. Prerequisite

    a. git

    b. nodeJS

    c. redis-server

2. Install

    a. `sudo npm install -g yo generator-hubot`

    b. `yo hubot`. Be sure not to overwrite existing files.

    c. Choose `rocketchat` as adapter when asked

    d. `npm install` for dependencies

3. Deploy

Heroku remote URL is `git@heroku.com:baymax-arkena-bot.git`

4. Scripts

Scripts are coffee scripts. Here is a list of communautary scripts:
[hubot script catalog](https://hubot-script-catalog.herokuapp.com/)

Here is the documentation for scripting:
[scripting](https://github.com/github/hubot/blob/master/docs/scripting.md)

5. Start and variables

The file `start.sh` contains the needed environment variables. New ones should
be added here. Simply type `./start.sh` to launch the bot

For heroku, the variables need to be set separately. A scheduler also needs to
be set to wake up the bot each morning. See [deploying on
heroku](https://github.com/hubot-scripts/hubot-heroku-keepalive) and
[hubot-heroku-keepalive](https://github.com/hubot-scripts/hubot-heroku-keepalive).

For gitlab project listing, the account linked is not an OTTSM only account.
Use environment variable `GITLAB_NAMESPACE_ID` (set to 126) to only show
projects from OTTSM group.
