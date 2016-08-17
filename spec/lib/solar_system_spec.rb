require 'eve_crest'

RSpec.describe EveCrest::Request::SolarSystem do
  context 'Get Info' do
    request = EveCrest::Request::SolarSystem.new(30000001)
    response = request.get
    it 'is successful' do
      expect(response.success?).to eq(true)
    end
    it 'has a name' do
      expect(response.name).to eq('Tanoo')
    end
    it 'has planets' do
      expect(response.planets.first).to eq(40000002)
    end
    it 'has moons' do
      expect(response.moons.first).to eq(40000004)
    end
    it 'has stargates' do
      expect(response.stargates.length).to eq(3)
    end
    it 'has a security level' do
      expect(response.security_level).to eq(0.8583240509033203)
    end
    it 'has sovereignty' do
      expect(response.sovereignty).to eq(500007)
    end
    it 'has a parent constellation' do
      expect(response.constellation).to eq(20000001)
    end
  end
end