module EveCrest
  module Response
    class Constellation < BaseResponse
      def region
        data['region'].to_s.split('/')[4].to_i
      end
      def position
        data['position']
      end
      def systems
        #only returns an array constellation ids
        _systems = Array.new
        data['systems'].each do |s|
          _systems.push(s['id'])
        end
        _systems
      end
      def name
        data['name']
      end
    end
  end
end