# Description:
#   Commands bastion to hand out a beer
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   bastion beer me - Grab me a beer
#
# Author:
#  houndbee, dedmau5

beers = [
  "http://organicxbenefits.com/wp-content/uploads/2011/11/organic-beer-health-benefits.jpg",
  "http://www.beer100.com/images/beermug.jpg",
  "http://www.bristolvantage.com/wp-content/uploads/2012/02/beer-calories1.jpg",
  "http://blog.collegebars.net/uploads/10-beers-you-must-drink-this-summer/10-beers-you-must-drink-this-summer-sam-adams-summer-ale.jpg",
  "http://media.treehugger.com/assets/images/2011/10/save-the-beers.jpg",
  "http://poemsforkush.files.wordpress.com/2012/04/beer.jpg",
  "http://www.wirtzbeveragegroup.com/wirtzbeveragenevada/wp-content/uploads/2010/06/Beer.jpg",
  "http://www.walyou.com/blog/wp-content/uploads/2010/06/giant-beer-glass-fathers-day-beer-gadgets-2010.jpg",
  "http://images.free-extras.com/pics/f/free_beer-911.jpg",
  "http://images.seroundtable.com/android-beer-dispenser-1335181876.jpg",
  "http://www.mediabistro.com/fishbowlDC/files/original/beer-will-change-the-world.jpg",
  "http://www.gqindia.com/sites/default/files/imagecache/article-inner-image-341-354/article/slideshow/1289/beer.JPG",
  "http://www.gqindia.com/sites/default/files/imagecache/article-inner-image-341-354/article/slideshow/1289/beer2.jpg",
  "http://www.gqindia.com/sites/default/files/imagecache/article-inner-image-341-354/article/slideshow/1289/Beer3.jpg",
  "http://365thingsaustin.com/wp-content/uploads/beer-flight1.jpg",
  "http://i102.photobucket.com/albums/m109/beanbone/Austin_Amber_200.jpg",
  "http://media.culturemap.com/crop/c8/a3/600x450/beer_tasting.jpg",
  "http://www.edgewoodyachtclub.com/wp-content/uploads/2016/01/beer.gif",
  "http://cdn.history.com/sites/2/2015/04/hith-london-beer-flood-iStock_000024885749Large-E.jpeg",
  "http://esq.h-cdn.co/assets/15/24/980x490/landscape-1434056356-landscape-beer-youll-never-drink.jpg",
  "",

]

module.exports = (robot) ->
  robot.hear /.*(beer me).*/i, (msg) ->
    if msg.message.user.name == 'okej'
      msg.send "Beer is not bleep for users who tränar, so here is something else for you!"
      msg.send "https://cdnssl.nu3.de/DE/product/3-x-gainomax-recovery-blaabaer-3-x-250-ml-97221-5730-12279-1-product.jpg"
    else
      msg.send msg.random beers
