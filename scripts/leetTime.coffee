# Description:
#
#   Bastion tells the time is 13:37
#
# Dependencies:
#
#   cron
#
# Author:
#
#   dedmau5

cronjob = require("cron").CronJob
random = require('hubot').Response.prototype.random

LEETTIME = "0 37 13 * * 1-5" # M-F 13:37
ROOM = "general"

responses = [
  "TIME! lol!",
  "You know what time it is? It's 13:37!",
  "13:37! It's the leet moment you've been waiting on.",
  "Ladies and gentlemen, it is now 13:37. Carry on and be pwnd.",
  "Just so y'all know. It's 13:37.",
  "KL",
  "HOFF O'CLOCK! HA!",
  "TIME!"
  ]

module.exports = (robot) ->
  remind = new cronjob LEETTIME,
    -> robot.messageRoom ROOM, random responses
    null
    true
