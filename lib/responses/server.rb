module EveCrest
  module Response
    class Server < BaseResponse
      def version
        data['serverVersion']
      end
      def server_name
        data['serverName']
      end
      def status
        data['serviceStatus']
      end
      def user_count
        data['userCount']
      end
    end
  end
end