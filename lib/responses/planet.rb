module EveCrest
  module Response
    class Planet < BaseResponse
      def name
        data['name']
      end
      def position
        data['position']
      end
      def solar_system
        data['solarSystem']['id']
      end
      def type
        data['type']['id']
      end
    end
  end
end