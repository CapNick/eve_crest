require 'eve_crest'

RSpec.describe EveCrest::Request::Constellation do
  context 'Get Info' do
    request = EveCrest::Request::Constellation.new(20000001)
    response = request.get
    it 'is successful' do
      expect(response.success?).to eq(true)
    end
    it 'has a position' do
      expect(response.position).to be_a_kind_of(Hash)
    end
    it 'has a name' do
      expect(response.name).to eq('San Matar')
    end
    it 'has an amount of systems' do
      expect(response.systems.length).to eq(8)
    end
    it 'has a parent region' do
      expect(response.region).to eq(10000001)
    end
  end
end