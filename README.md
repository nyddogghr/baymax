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

## Use

1. Start

Simply launch `start.sh`

2. Scripts

Scripts are coffee scripts. Here is a list of communautary scripts:
[hubot script catalog](https://hubot-script-catalog.herokuapp.com/)

Here is the documentation for scripting:
[scripting](https://github.com/github/hubot/blob/master/docs/scripting.md)

3. Start and variables

The file `start.sh` contains the needed environment variables. New ones should
be added here. Simply type `./start.sh` to launch the bot
