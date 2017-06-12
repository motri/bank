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
    let(:history) { History.new }
    it 'adds the current date to record hash as a :date and value pair' do
      history.add_record(10,'',20)
      expect(history.record[:date]).to eq Date.new
    end
    it 'adds a deposit key to the record with deposit amount as value' do
      history.add_record(10,'',20)
      expect(history.record[:credit]).to eq 10
    end
    it 'adds a balance key to the record with account balance as value' do
      history.add_record(10, '', 20)
      expect(history.record[:balance]).to eq 20
    end
  end
  describe '#add_log' do
    it 'adds an existing record to the logs array' do
      history.add_record(10, '', 20)
      history.add_log
      expect(history.logs).to_not be_empty
      expect(history.logs).to eq [{:date=> Date.new, :credit=>10, :debit=>"", :balance=>20}]
    end
  end
  describe '#reset_record' do
    it 'resets the record hash to empty' do
      history.add_record(10, '', 20)
      history.reset_record
      expect(history.record).to be_empty
    end
  end
end
