module EveCrest
  module Request
    class Incursions
      def get
        EveCrest::Response::Incursions.new(EveCrest::HTTPSRequest.get('/incursions/'))
      end
    end
  end
end