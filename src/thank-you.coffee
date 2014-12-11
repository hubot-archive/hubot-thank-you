# Description:
#   Hubot responds any thank message politely. Phrases from:
#   http://www.macmillandictionary.com/thesaurus-category/british/Ways-of-accepting-someone-s-thanks
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot thank[s] [you] - Hubot accepts your thanks
#   thanks hubot - same
#
# Author:
#   github.com/delucas
#

response = [
  "you're welcome",
  "no problem",
  "not at all",
  "don’t mention it",
  "it’s no bother",
  "it’s my pleasure",
  "my pleasure",
  "it’s all right",
  "it’s nothing",
  "think nothing of it",
  "sure",
  "sure thing"
]

module.exports = (robot) ->
  robot.respond /(thank).*/i, (msg) ->
    msg.send msg.random response

  robot.hear /thanks (.*)/i, (msg) ->
    name = msg.match[1]
    if name.toLowerCase() is robot.name.toLowerCase()
      msg.send msg.random response
