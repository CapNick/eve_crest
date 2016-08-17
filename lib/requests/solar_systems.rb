module EveCrest
  module Request
    class SolarSystems
      def get
        EveCrest::Response::SolarSystems.new(EveCrest::HTTPSRequest.get('/solarsystems/'))
      end
    end
  end
end