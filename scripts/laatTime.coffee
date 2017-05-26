# Description:
#
#   Bastion tells the time is 14:47 in general channel
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

LAATTIME = "0 47 14 * * 1-5" # M-F 13:37
ROOM = "general"

responses = [
  "Klockan är LAAT! :D",
  "1447 y'all, time for feekah!",
  "1447 is the best time... laat ftw!",
  "LAAT!",
  "LAAT is the new LEET!",
  "1447 is the new 1337!"
  ]

module.exports = (robot) ->
  remind = new cronjob LAATTIME,
    -> robot.messageRoom ROOM, random responses
    null
    true
