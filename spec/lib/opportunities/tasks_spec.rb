require 'eve_crest'

RSpec.describe EveCrest::Request::Opportunities::Tasks do
  context 'Get Tasks' do
    request = EveCrest::Request::Opportunities::Tasks.new
    response = request.get
    it 'is successful' do
      expect(response.success?).to eq(true)
    end
  end
end