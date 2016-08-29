require 'eve_crest'

RSpec.describe EveCrest::Request::Planet do
  context 'Get Planet' do
    request = EveCrest::Request::Planet.new(40000002)
    response = request.get
    it 'is successful' do
      expect(response.success?).to eq(true)
    end
    it 'has a name' do
      expect(response.name).to eq('Tanoo I')
    end
    it 'has a parent solar system' do
      expect(response.solar_system).to eq(30000001)
    end
    it 'has a type id' do
      expect(response.type).to eq(11)
    end
  end
end