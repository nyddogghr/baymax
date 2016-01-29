# Description:
#   A way to search images on imgur.com
#
# Configuration:
#   IMGUR_CLIENT_ID
#
# Commands:
#   hubot (imgur) me <query> - Returns a picture from imgur matching the requested search term.


module.exports = (robot) ->
  robot.respond /(imgur)( me)? (.*)/i, (msg) ->
    imgurMe msg, msg.match[3], (url) ->
      msg.send url

imgurMe = (msg, query, cb) ->
  client_id = 'Client-ID ' + process.env.IMGUR_CLIENT_ID
  msg
    .http('https://api.imgur.com/3/gallery/search/')
      .headers(Authorization: client_id)
      .query
        q: query
        limit: 20
      .get() (err, res, body) ->
        images = JSON.parse(body)
        images = images.data
        if images.length > 0
          image  = msg.random images
          msg.send image.link
        else
            msg.send "No images found"
