module EveCrest
  module Response
    class War < BaseResponse
      def started
        DateTime.parse(data['timeStarted'])
      end
      def declared
        DateTime.parse(data['timeDeclared'])
      end
      def finished
        DateTime.parse(data['timeFinished'])
      end
      def aggressor_id
        data['aggressor']['id']
      end
      def aggressor_name
        data['aggressor']['name']
      end
      def aggressor_kills
        data['aggressor']['shipsKilled']
      end
      def aggressor_kills_isk
        data['aggressor']['iskKilled']
      end
      def defender_id
        data['defender']['id']
      end
      def defender_name
        data['defender']['name']
      end
      def defender_kills
        data['defender']['shipsKilled']
      end
      def defender_kills_isk
        data['defender']['iskKilled']
      end
      def open_for_allies?
        data['openForAllies']
      end
      def ally_count
        data['allyCount']
      end
      def allies
        _allies = Array.new
        if data['allies'].nil?
          _allies
        else
          data['allies'].each do |a|
            _allies.push(a['id'])
          end
          _allies
        end
      end
      def is_mutual?
        data['mutual']
      end
    end
  end
end