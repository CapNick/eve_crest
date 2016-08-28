module EveCrest
  module Response
    module Opportunities
      class Groups
        def id_list
          _ids = Array.new
          data['items'].each do |i|
            _ids.push(i['id'])
          end
        end
        def name_list
          _ids = Array.new
          data['items'].each do |i|
            _ids.push(i['name'])
          end
        end
        def count
          data['totalCount']
        end
      end
    end
  end
end