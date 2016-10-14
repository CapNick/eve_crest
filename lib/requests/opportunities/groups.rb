module EveCrest
  module Request
    module Opportunities
      class Groups
        def get
          EveCrest::Response::Opportunities::Groups.new(EveCrest::HTTPSRequest.get('/opportunities/groups/',3600))
        end
      end
    end
  end
end