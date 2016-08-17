module EveCrest
  module Request
    class SolarSystem
      def initialize(param)
        @id = param
      end
      def get
        EveCrest::Response::SolarSystem.new(EveCrest::HTTPSRequest.get("/solarsystems/#{@id}/"))
      end
    end
  end
end