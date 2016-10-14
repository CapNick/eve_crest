module EveCrest
  module Request
    class Regions
      def get
        EveCrest::Response::Regions.new(EveCrest::HTTPSRequest.get('/regions/',3600))
      end
    end
  end
end