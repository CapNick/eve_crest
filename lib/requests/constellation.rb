module EveCrest
  module Request
    class Constellation
      def initialize(param)
        @id = param
      end
      def get
        EveCrest::Response::Constellation.new(EveCrest::HTTPSRequest.get("/constellations/#{@id}/"))
      end
    end
  end
end