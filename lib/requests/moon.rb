module EveCrest
  module Request
    class Moon
      def initialize(param)
        @id = param
      end
      def get
        EveCrest::Response::Moon.new(EveCrest::HTTPSRequest.get("/moons/#{@id}/"))
      end
    end
  end
end