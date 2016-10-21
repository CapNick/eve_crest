require 'eve_crest'

RSpec.describe EveCrest::Request::Bloodlines do
  context 'Get Bloodlines' do
    request = EveCrest::Request::Bloodlines.new
    response = request.get
    it 'is successful' do
      expect(response.success?).to eq(true)
    end
    it 'Returns a array of Bloodlines' do
      expect(response.all).to be_a_kind_of(Array)
    end
    it 'Returns a Bloodline object' do
      expect(response.all[0]).to be_a_kind_of(EveCrest::Bloodline)
    end
    it 'Returns an ammount of Bloodlines' do
      expect(response.count).to be_a_kind_of(Integer)
    end

  end
end