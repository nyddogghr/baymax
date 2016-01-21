# Description:
#   Dev excuses scraper. From http://developerexcuses.com/
#
# Commands:
#   hubot excuse me - Dev excuse scraper",
#
# Dependencies:
#
#   "cheerio": "~0.12.0"

cheerio = require 'cheerio'

module.exports = (robot) ->
  robot.respond /excuse me/i, (msg) ->
    robot.http("http://developerexcuses.com/")
      .get() (err, res, body) ->
        $ = cheerio.load(body)

        msg.send $('.wrapper a').text()
