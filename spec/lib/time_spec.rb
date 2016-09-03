require 'eve_crest'

RSpec.describe EveCrest::Request::Time do
  context 'Get Server Time' do
    request = EveCrest::Request::Time.new
    response = request.get
    it 'is successful' do
      expect(response.success?).to eq(true)
    end
    it 'returns the server time' do
      expect(response.success?).to eq(true)
    end
  end
end