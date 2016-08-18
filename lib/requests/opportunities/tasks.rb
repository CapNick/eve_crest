module EveCrest
  module Request
    module Opportunities
      class Tasks
        def get
          EveCrest::Response::Opportunities::Tasks.new(EveCrest::HTTPSRequest.get('/opportunities/tasks/'))
        end
      end
    end
  end
end