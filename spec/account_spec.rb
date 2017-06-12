require 'account'

describe Account do
  let(:my_account) { Account.new }
  describe 'initializes a new balance' do
    it 'with a total of 0' do
      expect(my_account.my_balance.total).to eq 0
    end
    it 'equates account balance to balance total' do
      my_account.my_balance.add(10)
      expect(my_account.balance).to eq 10
    end
    it 'initalizes an instance of history with an empty logs array' do
      expect(my_account.transaction.logs).to eq []
    end
  end
  describe '#deposit' do
    it 'adds amount to balance and reflects on account balance' do
      my_account.deposit(10)
      expect(my_account.balance).to eq 10
    end
    it 'creates a new record and adds it to the logs' do
      my_account.deposit(10)
      expect(my_account.transaction.logs[0][:balance]).to eq 10
    end
  end
end
