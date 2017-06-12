require 'history'

describe History do
  let(:history) { History.new }

  it 'initializes an empty logs array' do
    expect(history.logs).to eq []
  end

  describe '#add_record' do
    let(:history) { History.new }
    it 'adds the current date to record hash as a :date and value pair' do
      history.add_record(10, '', 20)
      expect(history.logs[0][:date]).to eq Time.now.strftime('%m/%d/%Y')
    end

    it 'adds a deposit key to the record with deposit amount as value' do
      history.add_record(10, '', 20)
      expect(history.logs[0][:credit]).to eq 10
    end

    it 'adds a debit key to the record with withdrawed amount as value' do
      history.add_record('', 10, 20)
      expect(history.logs[0][:debit]).to eq 10
    end

    it 'adds a balance key to the record with account balance as value' do
      history.add_record(10, '', 20)
      expect(history.logs[0][:balance]).to eq 20
    end
  end
end
