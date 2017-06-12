require 'history'

describe History do
  let(:history) { History.new }
  it 'initializes an empty record hash' do
    expect(history.record).to be_empty
  end
  it 'initializes an empty logs array' do
    expect(history.logs).to eq []
  end
  describe '#add_deposit' do
    it 'adds the current date to record hash as a :date and value pair' do
      history.add_deposit(10)
      expect(history.record[:date]).to eq Date.new
    end
    it 'adds a deposit key to the record hash with an amount value' do
      history.add_deposit(10)
      expect(history.record[:deposit]).to eq 10
    end
  end
end
