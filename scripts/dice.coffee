# Description:
#   Polyhedral Dice Simulator
#
# Dependencies:
#   none
#
# Configuration:
#   None
#
# Commands:
#   hubot XdY - Rolls X different Y sided dice
#
# Notes:
#   None
#
# Author:
#   Aysakh
module.exports = (robot) ->
  robot.respond /(.*)d(.*)/i, (msg) ->

    dice  = msg.match[1]
    sides = msg.match[2]

    result = 0

    result += Math.floor((Math.random() * sides) + 1) for [1..dice]

    msg.send result
