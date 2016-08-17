require 'eve_crest'

RSpec.describe EveCrest::Request::SolarSystems do
  context 'Get Info' do
    request = EveCrest::Request::SolarSystems.new
    response = request.get
    it 'is successful' do
      expect(response.success?).to eq(true)
    end
    it 'has region ids' do
      expect(response.solar_system_ids.first).to eq(30000001)
    end
    it 'has region names' do
      expect(response.solar_system_names.first).to eq('Tanoo')
    end
    it 'has a quantity' do
      expect(response.total_count).to eq(8035)
    end
  end
end