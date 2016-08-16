require 'eve_crest'

RSpec.describe EveCrest::Request::Constellation do
  context 'Get Info' do
    it 'to Display info on chosen constellation' do
      request = EveCrest::Request::Constellation.new(20000001)
      response = request.get
      expect(response.success?).to eq(true)
      expect(response.name).to eq('San Matar')

    end
  end
end