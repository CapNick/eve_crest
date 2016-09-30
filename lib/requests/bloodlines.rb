module EveCrest
  module Request
    class Bloodlines
      def get
        EveCrest::Response::Bloodlines.new(EveCrest::HTTPSRequest.get('/bloodlines/'))
      end
    end
  end
end