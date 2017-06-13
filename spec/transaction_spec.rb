require 'transaction'

describe 'Transaction' do
  let(:transaction) { Transaction.new(10, '', 10) }

  it 'initializes with the current date' do
    expect(transaction.date).to eq Time.now.strftime('%m/%d/%Y')
  end

  it 'initializes with the 10 as credit' do
    expect(transaction.credit).to eq 10
  end

  it 'initializes with no debit balue' do
    expect(transaction.debit).to eq ''
  end

  it 'initializes with the 10 as balance' do
    expect(transaction.balance).to eq 10
  end
end
