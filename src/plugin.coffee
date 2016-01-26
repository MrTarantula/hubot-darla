# Description:
#   Command Kodi
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot darla stream <url> - stream video to Kodi
#
# Author:
#   MrTarantula
#   github.com/MrTarantula

module.exports = (robot) ->
  robot.respond /muni ([\d]+)[ ]?(.*)?/i, (msg) ->
    # insert logic here
    # don't forget to msg.send somewhere to respond
