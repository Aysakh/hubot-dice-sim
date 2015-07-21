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
#   hubot XdY       - Rolls X different Y sided dice
#   hubot XdY(+|-)Z - Rolls X different Y sided dice and adds/subtracts Z
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

modify = (result, operator, modifier) ->
  switch operator
    when '+'  then result += modifier*1
    when '-'  then result -= modifier*1
  result

module.exports = (robot) ->
  robot.respond /(\d*)d(\d*)(\W*)(\d*)/i, (msg) ->
    result = roll(msg.match[1], msg.match[2])

    result = modify(result, msg.match[3], msg.match[4])

    msg.send result

