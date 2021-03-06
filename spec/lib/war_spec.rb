require 'eve_crest'

RSpec.describe EveCrest::Request::War do
  context 'Get War without allies' do
    request = EveCrest::Request::War.new('1')
    response = request.get
    it 'is successful' do
      expect(response.success?).to eq(true)
    end
    it 'has a starting time' do
      expect(response.started).to be_a_kind_of(DateTime)
    end
    it 'has a declaration time' do
      expect(response.declared).to be_a_kind_of(DateTime)
    end
    it 'has a finsihing time' do
      expect(response.finished).to be_a_kind_of(DateTime)
    end
    it 'returns war aggressor id' do
      expect(response.aggressor_id).to eq(147873211)
    end
    it 'returns war aggressor name' do
      expect(response.aggressor_name).to eq('Snow Corp')
    end
    it 'has aggressor kills' do
      expect(response.aggressor_kills).to eq(0)
    end
    it 'has aggressor kills worth in isk' do
      expect(response.aggressor_kills_isk).to eq(0)
    end
    it 'returns war defender id' do
      expect(response.defender_id).to eq(147021110)
    end
    it 'returns war defender name' do
      expect(response.defender_name).to eq('Dynant Industries')
    end
    it 'has defender kills' do
      expect(response.defender_kills).to eq(0)
    end
    it 'has defender kills worth in isk' do
      expect(response.defender_kills_isk).to eq(0)
    end
    it 'is open for allies' do
      expect(response.open_for_allies?).to eq(false)
    end
    it 'has allies' do
      expect(response.allies.length).to eq(0)
    end
    it 'was mutual' do
      expect(response.is_mutual?).to eq(false)
    end
    it 'has an ammount of allies' do
      expect(response.ally_count).to be_a_kind_of(Integer)
    end
  end
end