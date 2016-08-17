require 'eve_crest'

RSpec.describe EveCrest::Request::Constellations do
  context 'Get Info' do
    request = EveCrest::Request::Constellations.new
    response = request.get
    it 'is successful' do
      expect(response.success?).to eq(true)
    end
    it 'has constellations ids' do
      expect(response.constellation_ids.first).to eq(20000001)
    end
    it 'has constellations ids' do
      expect(response.constellation_names.first).to eq('San Matar')
    end
    it 'has a total amount' do
      expect(response.total_count).to eq(1120)
    end
  end
end