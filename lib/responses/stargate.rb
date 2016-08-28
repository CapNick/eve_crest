module EveCrest
  module Response
    class Stargate < BaseResponse
      def position
        data['position']
      end
      def name
        data['name']
      end
      def destination
        data['destination']['system']['id']
      end
      def paired_gate
        data['destination']['stargate']['id']
      end
      def system_id
        data['system']['id']
      end
      def type
        data['type']['id']
      end
    end
  end
end