module EveCrest
  module Response
    module Opportunities
      class Task < BaseResponse
        def name
          data['name']
        end
        def description
          data['description']
        end
      end
    end
  end
end