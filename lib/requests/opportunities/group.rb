module EveCrest
  module Request
    module Opportunities
      class Group
        def initialize(param)
          @id = param
        end
        def get
          EveCrest::Response::Opportunities::Group.new(EveCrest::HTTPSRequest.get("/opportunities/groups/#{@id}/", 3600))
        end
      end
    end
  end
end