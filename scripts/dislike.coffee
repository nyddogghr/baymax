# Description:
#   Grumpy cat dislike this >:[
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Author:
#   nesQuick

module.exports = (robot) ->
  robot.hear /dislike/i, (msg) ->
    msg.send "http://www.mouv.fr/sites/default/files/2014/07/31/165205/20130915-190532.jpg"
