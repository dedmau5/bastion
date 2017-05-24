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

        robot.respond /HOW ARE YOU?$/i, (msg) ->
          msg.send "I am fine, thank you. What be 'up' with thee?"

        robot.respond /WAZZUP?$/i, (msg) ->
            msg.send "I'm fine af! 'sup witchou, homie?"
