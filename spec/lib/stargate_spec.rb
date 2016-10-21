require 'eve_crest'

RSpec.describe EveCrest::Request::Stargate do
  context 'Get Info' do
    request = EveCrest::Request::Stargate.new(50000342)
    response = request.get
    it 'is successful' do
      expect(response.success?).to eq(true)
    end
    it 'has a name' do
      expect(response.name).to eq('Stargate (Tanoo)')
    end
    it 'has a position' do
      expect(response.position).to be_a_kind_of(Hash)
    end
    it 'has a destination' do
      expect(response.destination).to eq(30000001)
    end
    it 'has a paired gate' do
      expect(response.paired_gate).to eq(50000056)
    end
    it 'has a system location' do
      expect(response.system_id).to eq(30000003)
    end
    it 'has a gate type' do
      expect(response.type).to eq(29624)
    end
  end
end