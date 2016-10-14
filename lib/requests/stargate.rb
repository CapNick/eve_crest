module EveCrest
  module Request
    class Stargate
      def initialize(param)
        @id = param
        end
      def get
        EveCrest::Response::Stargate.new(EveCrest::HTTPSRequest.get("/stargates/#{@id}/",3600))
      end
    end
  end
end