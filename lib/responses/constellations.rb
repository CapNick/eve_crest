module EveCrest
  module Response
    class Constellations < BaseResponse
      def raw
        data
      end
      def constellation_ids
        #only returns an array constellation ids
        _constellations = Array.new
        data['items'].each do |s|
          _constellations.push(s['id'])
        end
        _constellations
      end
      def constellation_names
        #only returns an array constellation ids
        _constellations = Array.new
        data['items'].each do |s|
          _constellations.push(s['name'])
        end
        _constellations
      end
      def total_count
        data['totalCount']
      end
    end
  end
end