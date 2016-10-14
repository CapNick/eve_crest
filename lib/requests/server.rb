module EveCrest
  module Request
    class Server
      def get
        EveCrest::Response::Server.new(EveCrest::HTTPSRequest.get('/', 3600))
      end
    end
  end
end