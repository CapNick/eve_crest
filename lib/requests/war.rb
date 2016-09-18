module EveCrest
  module Request
    class War
      def initialize(param)
        @id = param
      end
      def get
        EveCrest::Response::War.new(EveCrest::HTTPSRequest.get("/wars/#{@id}/"))
      end
    end
  end
end