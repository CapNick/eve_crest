module EveCrest
  module Response
    class Time < BaseResponse
      def get
        DateTime.parse(data['time'])
      end
    end
  end
end