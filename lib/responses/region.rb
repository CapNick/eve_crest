module EveCrest
  module Response
    class Region < BaseResponse
      def raw
        data
      end
      def name
        data['name']
      end
      def description
        data['description']
      end
      def constellations
        #only returns an array constellation ids
        _constellations = Array.new
        data['constellations'].each do |s|
          _constellations.push(s['id'])
        end
        _constellations
      end
      #market shit leave for now :)
      def market_buy_orders

      end
      def market_history

      end
      def market_orders

      end
      def market_orders_all

      end
      def market_sell_orders

      end
    end
  end
end