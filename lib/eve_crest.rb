require 'eve_crest/version'
require 'json'
require 'httparty'
require 'awesome_print'
require 'redis'

#Base
require_relative 'https_request'
require_relative 'base_response'

#Requests
##Constellation
require_relative 'requests/constellation'
require_relative 'requests/constellations'
##Region
require_relative 'requests/region'
require_relative 'requests/regions'
##SolarSystem
require_relative 'requests/solar_system'
require_relative 'requests/solar_systems'
##Planet
require_relative 'requests/planet'
##Moon
require_relative 'requests/moon'
##Stargate
require_relative 'requests/stargate'
##Opportunities
require_relative 'requests/opportunities/group'
require_relative 'requests/opportunities/groups'
require_relative 'requests/opportunities/task'
require_relative 'requests/opportunities/tasks'
##Server
require_relative 'requests/server'
require_relative 'requests/time'
##Incursions
require_relative 'requests/incursions'
##Wars
require_relative 'requests/wars'
require_relative 'requests/war'

#Responses
##Constellation
require_relative 'responses/constellation'
require_relative 'responses/constellations'
##Region
require_relative 'responses/region'
require_relative 'responses/regions'
##SolarSystem
require_relative 'responses/solar_system'
require_relative 'responses/solar_systems'
##Planet
require_relative 'responses/planet'
##Moon
require_relative 'responses/moon'
##Stargate
require_relative 'responses/stargate'
##Opportunities
require_relative 'responses/opportunities/group'
require_relative 'responses/opportunities/groups'
require_relative 'responses/opportunities/task'
require_relative 'responses/opportunities/tasks'
##Server
require_relative 'responses/server'
require_relative 'responses/time'
##Incursions
require_relative 'responses/incursions'
##Wars
require_relative 'responses/wars'
require_relative 'responses/war'

#Extra Information
DEFAULT_CACHE_TIME = 86400000
CREST_URL = 'https://crest-tq.eveonline.com'
REDIS = Redis.new