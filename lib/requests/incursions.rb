module EveCrest
  module Request
    class Incursions
      def get
        EveCrest::Response::Incursions.new(EveCrest::HTTPSRequest.get('/incursions/', 300))
      end
    end
  end
end