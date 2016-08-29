module EveCrest
  module Response
    module Opportunities
      class Group < BaseResponse
        def name
          data['name']
        end
        def description
          data['description']
        end
        def tasks
          _tasks = Array.new
          data['achievementTasks'].each do |t|
            _tasks.push(t['id'])
          end
        end
        # group connections only have one item ever in them ?????
        def group_connection
          data['groupConnections'].first['id']
        end
      end
    end
  end
end
