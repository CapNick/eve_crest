require 'eve_crest'

RSpec.describe EveCrest::Request::Opportunities::Task do
  context 'Get Task' do
    request = EveCrest::Request::Opportunities::Task.new(2)
    response = request.get
    it 'is successful' do
      expect(response.success?).to eq(true)
    end
    it 'has a name' do
      expect(response.name).to eq('Mine Ore')
    end
    it 'has a description' do
      expect(response.description).to eq('<b>Wait for your mining laser cycle to finish at least three cycles.</b> It may take a little more time, but why not take the time to fill up your cargo hold and get back to station once you are done to make some money from your hard labor.')
    end
  end
end