module EveCrest
  module Request
    class Constellations
      def get
        EveCrest::Response::Constellations.new(EveCrest::HTTPSRequest.get('/constellations/'))
      end
    end
  end
end