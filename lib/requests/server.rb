module EveCrest
  module Request
    class Server
      def get
        EveCrest::Response::Server.new(EveCrest::HTTPSRequest.get('/'))
      end
    end
  end
end