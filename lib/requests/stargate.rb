module EveCrest
  module Request
    class Stargate
      def initialize(param)
        @id = param
        end
      def get
        EveCrest::Response::Stargate.new(EveCrest::HTTPSRequest.get("/stargates/#{@id}/"))
      end
    end
  end
end