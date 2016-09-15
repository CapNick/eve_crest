module EveCrest
  class BaseResponse
    attr_accessor :data
    def initialize(json)
      @data = json
    end
    def success?
      !data.has_key?('exceptionType')
    end
    def raw
      data
    end
    def error_message
      if success?
        nil
      else
        data['exceptionType']
      end
    end
    def cached_until
      DateTime.strptime(data['cachedUntil'], '%Y-%m-%d %H:%M:%S')
    end
  end
end