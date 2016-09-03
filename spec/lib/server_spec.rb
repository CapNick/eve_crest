require 'eve_crest'

RSpec.describe EveCrest::Request::Server do
  context 'Get Server information' do
    request = EveCrest::Request::Server.new
    response = request.get
    it 'is successful' do
      expect(response.success?).to eq(true)
    end
    it 'returns a server version' do
      expect(response.version).to eq(Integer)
    end
    it 'returns the server name' do
      expect(response.server_name).to eq(true)
    end
    it 'returns the server status' do
      expect(response.status).to eq(true)
    end
    it 'returns the server user count' do
      expect(response.user_count).to eq(true)
    end
  end
end