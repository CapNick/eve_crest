require 'eve_crest'

RSpec.describe EveCrest::Request::Moon do
  context 'Get Moon' do
    request = EveCrest::Request::Moon.new(40000012)
    response = request.get
    it 'is successful' do
      expect(response.success?).to eq(true)
    end
    it 'has a name' do
      expect(response.name).to eq('Tanoo V - Moon 1')
    end
    it 'has a position' do
      expect(response.position).to be_a_kind_of(Hash)
    end
    it 'has a type id' do
      expect(response.type).to eq(14)
    end
    it 'has a parent solar system' do
      expect(response.solar_system).to eq(30000001)
    end
  end
end