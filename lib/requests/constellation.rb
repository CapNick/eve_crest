module EveCrest
  module Request
    class Constellation
      def initialize(param)
        @constellationID = param
      end
      def get
        EveCrest::Response::Constellation.new(EveCrest::HTTPSRequest.get("/constellations/#{@constellationID}/"))
      end
    end
  end
end