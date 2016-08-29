require 'eve_crest'

RSpec.describe EveCrest::Request::Opportunities::Tasks do
  context 'Get Tasks' do
    request = EveCrest::Request::Opportunities::Tasks.new
    response = request.get
    it 'is successful' do
      expect(response.success?).to eq(true)
    end
    it 'returns a list of task ids' do
      expect(response.ids.length).to eq(59)
    end
    it 'returns a list of task names' do
      expect(response.names.length).to eq(59)
    end
    it 'has an amount of tasks' do
      expect(response.count).to eq(59)
    end
  end
end