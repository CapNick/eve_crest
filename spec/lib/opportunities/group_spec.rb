# require 'eve_crest'
#
# RSpec.describe EveCrest::Request::Opportunities::Group do
#   context 'Get Group' do
#     request = EveCrest::Request::Opportunities::Group.new(100)
#     response = request.get
#     it 'is successful' do
#       expect(response.success?).to eq(true)
#     end
#     it 'has group connections' do
#       expect(response.group_connection).to eq(101)
#     end
#     it 'has a name' do
#       expect(response.name).to eq('Take a Look Around')
#     end
#     it 'has a description' do
#       expect(response.description).to eq('In space, situational awareness is the key to your survival. Let me show you how to become aware and alert.')
#     end
#     it 'has a set of tasks' do
#       expect(response.tasks.length).to eq(4)
#     end
#   end
# end