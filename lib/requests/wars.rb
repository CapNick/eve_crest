module EveCrest
  module Request
    class Wars
      def get
        EveCrest::Response::Wars.new(EveCrest::HTTPSRequest.get('/wars/'))
      end
    end
  end
end