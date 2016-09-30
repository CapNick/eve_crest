module EveCrest
  module Response
    class Incursions < BaseResponse
      def all
        incursions = Array.new
        data['items'].each do |incursion_data|
          incursions.push(EveCrest::Incursion.new(incursion_data))
        end
        incursions
      end
      def count
        data['totalCount']
      end
    end
  end
end