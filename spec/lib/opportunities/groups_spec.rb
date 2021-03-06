require 'eve_crest'

RSpec.describe EveCrest::Request::Opportunities::Groups do
  context 'Get Groups' do
    request = EveCrest::Request::Opportunities::Groups.new
    response = request.get
    it 'is successful' do
      expect(response.success?).to eq(true)
    end
    it 'returns a list of group ids' do
      expect(response.ids.length).to eq(19)
    end
    it 'returns a list of group names' do
      expect(response.names.length).to eq(19)
    end
    it 'returns the total count of ids' do
      expect(response.count).to eq(19)
    end
  end
end