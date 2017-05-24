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

    robot.respond /HOW ARE YOU?/i, (msg) ->
      msg.send "I am fine, thank you. What be 'up' with thee, hooman?"

    robot.respond /WAZZUP?/i, (msg) ->
        msg.send "I'm fine af! 'sup witchou, homie?"

     robot.hear /hahaha/i, (res) ->
       res.send "bleeeep-bleep-bleep-bleep...!!!"

     robot.hear /niklas/i, (res) ->
       res.send "...fuckin' Phara-picker..."

    robot.hear /I like pie/i, (res) ->
      res.emote "makes a freshly baked pie"

    lulz = ['lol', 'rofl', 'lmao']
    robot.respond /lulz/i, (res) ->
       res.send res.random lulz
