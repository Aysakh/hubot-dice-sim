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
roll = (dice, sides) ->
  result = 0
  result += Math.floor((Math.random() * sides) + 1) for [1..dice]
  result


module.exports = (robot) ->
  robot.respond /(.*)d(.*)/i, (msg) ->

    msg.send roll(msg.match[1], msg.match[2])

