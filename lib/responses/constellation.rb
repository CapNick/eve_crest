module EveCrest
  module Response
    class Constellation < BaseResponse
      def raw
        data
      end
      def region
        data['region']
      end
      def position
        data['position']
      end
      def systems
        data['systems']
      end
      def name
        data['name']
      end
    end
  end
end