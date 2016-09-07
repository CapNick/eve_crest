module EveCrest
  module Request
    class Time
      def get
        EveCrest::Response::Time.new(EveCrest::HTTPSRequest.get('/time/'))
      end
    end
  end
end