require 'eve_crest'

RSpec.describe EveCrest::Request::Wars do
  context 'Get Wars' do
    request = EveCrest::Request::Wars.new
    response = request.get
    it 'is successful' do
      expect(response.success?).to eq(true)
      end
    it 'has an ammount of wars' do
      expect(response.count).to eq(true)
    end
  end
end