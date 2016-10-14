module EveCrest
  module Request
    class Constellations
      def get
        EveCrest::Response::Constellations.new(EveCrest::HTTPSRequest.get('/constellations/',3600))
      end
    end
  end
end