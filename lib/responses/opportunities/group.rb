module EveCrest
  module Response
    module Opportunities
      class Group
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
      end
    end
  end
end
