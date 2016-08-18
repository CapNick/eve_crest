require 'eve_crest'

RSpec.describe EveCrest::Request::Opportunities::Groups do
  context 'Get Groups' do
    request = EveCrest::Request::Opportunities::Groups.new
    response = request.get
    it 'is successful' do
      expect(response.success?).to eq(true)
    end
  end
end