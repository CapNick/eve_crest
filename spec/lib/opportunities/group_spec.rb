require 'eve_crest'

RSpec.describe EveCrest::Request::Opportunities::Group do
  context 'Get Group' do
    request = EveCrest::Request::Opportunities::Group.new(100)
    response = request.get
    it 'is successful' do
      expect(response.success?).to eq(true)
    end
    it 'has a name' do
      expect(response.name).to eq(true)
    end
  end
end