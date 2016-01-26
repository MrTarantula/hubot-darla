# Description:
#   Command Kodi
#
# Dependencies:
#   None
#
# Configuration:
#   HUBOT_KODI_URL - URL to Kodi
#   HUBOT_KODI_PORT - Port Kodi listens for http control
#   HUBOT_KODI_USER - Kodi Username
#   HUBOT_KODI_PW - Kodi password
#
#   HUBOT_SONARR_URL - URL to Sonarr
#   HUBOT_SONARR_API - Sonarr API key
#
#   HUBOT_COUCHPOTATO_URL - URL to CouchPotato
#   HUBOT_COUCHPOTATO_API - CouchPotato API key
#
#   HUBOT_NZBGET_URL - URL to NZBGet
#   HUBOT_NZBGET_API - NZBGet API key
#
# Commands:
#   darla stream <url> - stream video to Kodi
#   darla list shows - list TV Shows
#   darla list wanted movies - list all wanted movies
#
# Author:
#   MrTarantula
#   github.com/MrTarantula

module.exports = (robot) ->
  robot.respond /muni ([\d]+)[ ]?(.*)?/i, (msg) ->
    # insert logic here
    # don't forget to msg.send somewhere to respond

getSonarrHeaders = ->
  sonarr_api = process.env.HUBOT_SONARR_API

  headers = 'Accept': "application/json"
  if sonarr_api
    headers["X-Api-Key"] = sonarr_api

  return headers

getCouchPotatoHeaders = ->
  couchpotato_api = process.env.HUBOT_COUCHPOTATO_API

  headers = 'Accept': "application/json"
  if couchpotato_api
    headers["X-Api-Key"] = couchpotato_api

  return headers
