module EveCrest
  module Response
    class SolarSystem < BaseResponse
      def raw
        data
      end
      def name
        data['name']
      end
      def position
        data['position']
      end
      def planets
        #only returns an array planets ids
        _planets = Array.new
        data['planets'].each do |s|
          _planets.push(s['href'].to_s.split('/')[4])
        end
        _planets
      end
      def moons
        _moons = Array.new
        data['planets'].each do |s|
          s['moons'].each do |m|
            _moons.push(m['href'].to_s.split('/')[4])
          end
        end
        _moons
      end
      def stargates
        _stargates = Array.new
        data['stargates'].each do |s|
          _stargates.push(s['id'])
        end
        _stargates
      end
      def security_level
        data['securityStatus']
      end
      def sovereignty
        data['sovereignty']['id']
      end

      def constellation
        data['constellation']['id']
      end
    end
  end
end