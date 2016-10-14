module EveCrest
  module Request
    class SolarSystems
      def get
        EveCrest::Response::SolarSystems.new(EveCrest::HTTPSRequest.get('/solarsystems/',3600))
      end
    end
  end
end