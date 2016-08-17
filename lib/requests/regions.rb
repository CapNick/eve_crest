module EveCrest
  module Request
    class Regions
      def get
        EveCrest::Response::Regions.new(EveCrest::HTTPSRequest.get('/regions/'))
      end
    end
  end
end