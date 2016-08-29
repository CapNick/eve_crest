module EveCrest
  module Response
    class Moon < BaseResponse
      def position
        data['position']
      end
      def name
        data['name']
      end
      def type
        data['type']['id']
      end
      def solar_system
        data['solarSystem']['id']
      end
    end
  end
end