module EveCrest
  module Response
    module Opportunities
      class Groups < BaseResponse
        def ids
          _ids = Array.new
          data['items'].each do |i|
            _ids.push(i['id'])
          end
          _ids
        end
        def names
          _names = Array.new
          data['items'].each do |i|
            _names.push(i['name'])
          end
          _names
        end
        def count
          data['totalCount']
        end
      end
    end
  end
end