require 'eve_crest'

RSpec.describe EveCrest::HTTPSRequest do
  context 'Sending requests to the crest server' do
    it 'with a blank value' do
      response = EveCrest::HTTPSRequest.get('/#',86400)
      expect(response['serverName']).to eq('TRANQUILITY',)
      expect(response.keys.length).to eq(32)
    end
    it 'with an invalid value' do
      response = EveCrest::HTTPSRequest.get('/wrong',86400)
      expect(response.keys.length).to eq(4)
    end
  end
end

