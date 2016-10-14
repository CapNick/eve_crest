module EveCrest
  module Request
    class Constellation
      def initialize(param)
        @id = param
      end
      def get
        EveCrest::Response::Constellation.new(EveCrest::HTTPSRequest.get("/constellations/#{@id}/",3600))
      end
    end
  end
end