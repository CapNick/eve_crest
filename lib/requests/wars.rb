module EveCrest
  module Request
    class Wars
      def get
        EveCrest::Response::Wars.new(EveCrest::HTTPSRequest.get('/wars/', 86400))
      end
    end
  end
end