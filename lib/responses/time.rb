module EveCrest
  module Response
    class Time < BaseResponse
      def get
        time = DateTime.parse(data['time'])
      end
    end
  end
end