# Description:
#   bastion delivers a pic from Reddit's /r/holdmybeer frontpage if it's friday
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   bastion is it friday - Display the picture from /r/holdmybeer if it's friday
#
# Author:
#   captain jinx, dedmau5
url = require("url")

beers = [
  "http://organicxbenefits.com/wp-content/uploads/2011/11/organic-beer-health-benefits.jpg",
  "http://www.beer100.com/images/beermug.jpg",
  "http://blog.collegebars.net/uploads/10-beers-you-must-drink-this-summer/10-beers-you-must-drink-this-summer-sam-adams-summer-ale.jpg",
  "http://poemsforkush.files.wordpress.com/2012/04/beer.jpg",
  "http://images.seroundtable.com/android-beer-dispenser-1335181876.jpg",
  "http://365thingsaustin.com/wp-content/uploads/beer-flight1.jpg",
  "http://i102.photobucket.com/albums/m109/beanbone/Austin_Amber_200.jpg",
  "http://media.culturemap.com/crop/c8/a3/600x450/beer_tasting.jpg",
  "http://www.edgewoodyachtclub.com/wp-content/uploads/2016/01/beer.gif",
  "http://cdn.history.com/sites/2/2015/04/hith-london-beer-flood-iStock_000024885749Large-E.jpeg",
  "http://esq.h-cdn.co/assets/15/24/980x490/landscape-1434056356-landscape-beer-youll-never-drink.jpg",
]

dayName = (day) ->
  return "monday" if day == 1
  return "tuesday" if day == 2
  return "wednesday" if day == 3
  return "thursday" if day == 4
  return "friday" if day == 5
  return "saturday" if day == 6
  return "sunday" if day == 0

module.exports = (robot) ->
  robot.respond /is it friday/i, (msg) ->

    if msg.message.user.name == 'mrhoff'
      msg.send "My dear mrhoff... for you it's an eternal monday."
      return;

    today = new Date()
    day = today.getDay()

    if today.getDay() != 5
      msg.send "Nope, but you are still allowed to drink beer on a " + dayName(day) + "!"
      #msg.send "beer me"
      msg.send msg.random beers
      return

    msg.send "YES IT IS FRIDAY!!!"

    msg.http('http://www.reddit.com/r/holdmybeer.json')
      .get() (err, res, body) ->
        result = JSON.parse(body).holdmybeer

        items = [ ]
        for child in result.data.children
          if child.data.domain != "self.holdmybeer"
            items.push({ url: child.data.url, title: child.data.title.replace('HMB', 'Hold my beer').replace('beer', ':beer:') })

        if items.count <= 0
          msg.send "Couldn't find anything awesome..."
          return

        rnd = Math.floor(Math.random()*items.length)
        picked_item = items[rnd]

        parsed_url = url.parse(picked_item.url)
        if parsed_url.host == "imgur.com"
          parsed_url.host = "i.imgur.com"
          parsed_url.pathname = parsed_url.pathname + ".jpg"

          picked_item.url = url.format(parsed_url)

        msg.send picked_item.title
        msg.send picked_item.url
