require 'eve_crest'

RSpec.describe EveCrest::Request::Regions do
  context 'Get Info' do
    request = EveCrest::Request::Regions.new
    response = request.get
    it 'is successful' do
      expect(response.success?).to eq(true)
    end
    it 'has region ids' do
      expect(response.region_ids.first).to eq(11000001)
    end
    it 'has region names' do
      expect(response.region_names.first).to eq('A-R00001')
    end
    it 'has a quantity' do
      expect(response.total_count).to eq(100)
    end
  end
end