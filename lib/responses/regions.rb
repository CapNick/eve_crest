module EveCrest
  module Response
    class Regions < BaseResponse
      def region_ids
        #only returns an array constellation ids
        _regions = Array.new
        data['items'].each do |s|
          _regions.push(s['id'])
        end
        _regions
      end
      def region_names
        #only returns an array constellation ids
        _regions = Array.new
        data['items'].each do |s|
          _regions.push(s['name'])
        end
        _regions
      end
      def total_count
        data['totalCount']
      end
    end
  end
end