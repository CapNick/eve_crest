module EveCrest
  module Request
    module Opportunities
      class Task
        def initialize(param)
          @id = param
        end
        def get
          EveCrest::Response::Opportunities::Task.new(EveCrest::HTTPSRequest.get("/opportunities/tasks/#{@id}/",3600))
        end
      end
    end
  end
end