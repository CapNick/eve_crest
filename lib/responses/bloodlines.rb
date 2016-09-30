module EveCrest
  module Response
    class Bloodlines < BaseResponse
      def all
        bloodlines = Array.new
        data['items'].each do |bloodline_data|
          bloodlines.push(EveCrest::Incursion.new(bloodline_data))
        end
        bloodlines
      end
      def count
        data['totalCount']
      end
    end
  end
end