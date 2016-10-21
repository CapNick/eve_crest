require 'eve_crest'

RSpec.describe 'Response Test' do
  context 'Get Server Time' do
    request = EveCrest::Request::SolarSystem.new(2)
    response = request.get
    it 'is not successful' do
      expect(response.success?).to eq(false)
    end
    it 'returns raw data' do
      expect(response.raw).to be_a_kind_of(Hash)
    end
    it 'returns error message' do
      expect(response.error_message).to be_a_kind_of(String)
    end
    it 'returns a cached intil time object' do
      expect(response.cached_until).to be_a_kind_of(DateTime)
    end
  end
end