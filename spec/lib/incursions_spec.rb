require 'eve_crest'

RSpec.describe EveCrest::Request::Incursions do
  context 'Get Incursions' do
    request = EveCrest::Request::Incursions.new
    response = request.get
    it 'is successful' do
      expect(response.success?).to eq(true)
    end
    it 'has a total ammount of incursions' do
      expect(response.count).to eq(5)
    end
    it 'has a amount of incursions' do
      expect(response.list)
    end
  end
end