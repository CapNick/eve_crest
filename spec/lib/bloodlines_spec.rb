require 'eve_crest'

RSpec.describe EveCrest::Request::Bloodlines do
  context 'Get Bloodlines' do
    request = EveCrest::Request::Bloodlines.new
    response = request.get
    it 'is successful' do
      expect(response.success?).to eq(true)
    end
    it 'Returns a array of Bloodlines' do
      expect(response.bloodlines).to be a_kind_of(Array)
    end
    it 'Returns a Bloodline object' do
      expect(response.bloodlines[0]).to be a_kind_of(EveCrest::Bloodline)
    end
    it 'Returns a Bloodline ' do
      expect(response.bloodlines[0]).to be a_kind_of(EveCrest::Bloodline)
    end

  end
end