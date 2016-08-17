module EveCrest
  module Request
    class Planet
      def initialize(param)
        @id = param
      end
      def get
        EveCrest::Response::Planet.new(EveCrest::HTTPSRequest.get("/planets/#{@id}/"))
      end
    end
  end
end