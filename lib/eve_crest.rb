require 'eve_crest/version'
require 'json'
require 'httparty'
require 'awesome_print'
require 'redis'

#Base
require_relative 'https_request'
require_relative 'base_response'

#Requests
require_relative 'requests/constellation'
require_relative 'requests/constellations'
require_relative 'requests/region'
require_relative 'requests/regions'
require_relative 'requests/solar_system'
require_relative 'requests/solar_systems'
require_relative 'requests/stargate'

#Responses
require_relative 'responses/constellation'
require_relative 'responses/constellations'
require_relative 'responses/region'
require_relative 'responses/regions'
require_relative 'responses/solar_system'
require_relative 'responses/solar_systems'
require_relative 'responses/stargate'



#Extra Information
DEFAULT_CACHE_TIME = 86400000
CREST_URL = 'https://crest-tq.eveonline.com'
REDIS = Redis.new