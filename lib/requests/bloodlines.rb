module EveCrest
  module Request
    class Bloodlines
      def get
        EveCrest::Response::Bloodlines.new(EveCrest::HTTPSRequest.get('/bloodlines/', 300))
      end
    end
  end
end