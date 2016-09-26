module EveCrest
  module Request
    class Bloodlines
      def get
        EveCrest::Response::Bloodlines.new(EveCrest::HTTPSRequest.get('/constellations/'))
      end
    end
  end
end