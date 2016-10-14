module EveCrest
  class HTTPSRequest
    def self.get(_uri, expire_time)
      # Need to make get have two params so the time to be cached can be respected
      uri = URI("#{CREST_URL}#{_uri}")

      cache = REDIS.get(uri)

      if cache.nil?
        response = do_request(uri)
        response[:cachedUntil] = (Time.now + expire_time).to_s
        REDIS.set(uri, response.to_json)
      else
        cache_json = JSON.parse(cache, :quirks_mode => true)

        expires = DateTime.strptime(cache_json['cachedUntil'], '%Y-%m-%d %H:%M:%S')
        time_expires = Time.parse(expires.to_s)

        if time_expires < Time.now
          response = do_request(uri)
          response[:cachedUntil] = Time.now.to_s
          REDIS.set(uri, response.to_json)
        else
          response = cache_json
        end
      end

      return response
    end

    private

    def self.do_request(uri)
      response = HTTParty.get(uri)
      json = JSON.parse(response)
      return json
    end
  end
end
