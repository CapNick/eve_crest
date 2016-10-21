require 'eve_crest'

RSpec.describe EveCrest::Request::Incursions do
  context 'Get Incursions' do
    request = EveCrest::Request::Incursions.new
    response = request.get
    it 'is successful' do
      expect(response.success?).to eq(true)
    end
    it 'has a total ammount of incursions' do
      expect(response.count).to be_a_kind_of(Integer)
    end
    it 'has a array of incursions' do
      expect(response.all).to be_a_kind_of(Array)
    end
    it 'the array contains a incursion' do
      expect(response.all[0]).to be_a_kind_of(EveCrest::Incursion)
    end

  end
end