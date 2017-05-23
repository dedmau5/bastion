# Description:
#   Bastion delivers random replies if called
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   bastion ping - Reply with pong
#   bastion time - reply with current time on the server
#
# Author:
#
#  dedmau5


module.exports = (robot) ->
  robot.respond /PING$/i, (msg) ->
      msg.send "PONG"

  robot.respond /TIME$/i, (msg) ->
    msg.send "Server time is: #{new Date()}"
