module EveCrest
  module Request
    class Region
      def initialize(param)
        @id = param
      end
      def get
        EveCrest::Response::Region.new(EveCrest::HTTPSRequest.get("/regions/#{@id}/",3600))
      end
    end
  end
end