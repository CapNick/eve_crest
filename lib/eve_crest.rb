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
require_relative 'requests/region'

#Responses
require_relative 'responses/constellation'
require_relative 'responses/region'



#Extra Information
DEFAULT_CACHE_TIME = 86400000
CREST_URL = 'https://crest-tq.eveonline.com'
REDIS = Redis.new