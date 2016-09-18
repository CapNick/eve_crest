module EveCrest
  module Response
    class Wars < BaseResponse
      def count
        data['totalCount']
      end
    end
  end
end