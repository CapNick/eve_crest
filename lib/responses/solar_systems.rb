module EveCrest
  module Response
    class SolarSystems < BaseResponse
      def raw
        data
      end
      def solar_system_ids
        #only returns an array solarsystem ids
        _solar_system = Array.new
        data['items'].each do |s|
          _solar_system.push(s['id'])
        end
        _solar_system
      end
      def solar_system_names
        #only returns an array solarsystem ids
        _solar_system = Array.new
        data['items'].each do |s|
          _solar_system.push(s['name'])
        end
        _solar_system
      end
      def total_count
        data['totalCount']
      end
    end
  end
end