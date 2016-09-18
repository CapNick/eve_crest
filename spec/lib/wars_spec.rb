require 'eve_crest'

RSpec.describe EveCrest::Request::Wars do
  context 'Get Wars' do
    request = EveCrest::Request::Wars.new
    response = request.get
    it 'is successful' do
      expect(response.success?).to eq(true)
      end
    it 'has an ammount of wars' do
      expect(response.count).to be_a_kind_of(Integer)
    end
  end
end