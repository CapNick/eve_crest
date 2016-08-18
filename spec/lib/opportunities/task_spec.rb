require 'eve_crest'

RSpec.describe EveCrest::Request::Opportunities::Task do
  context 'Get Groups' do
    request = EveCrest::Request::Opportunities::Task.new(100)
    response = request.get
    it 'is successful' do
      expect(response.success?).to eq(true)
    end
  end
end