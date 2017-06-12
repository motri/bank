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
    it 'creates a new record and adds it to the logs with the correcrt balance' do
      my_account.deposit(10)
      expect(my_account.transaction.logs[0][:balance]).to eq 10
    end
    it 'does not add a value to the debit key' do
      my_account.deposit(10)
      expect(my_account.transaction.logs[0][:debit]).to eq ''
    end
  end
  describe '#withdraw' do
    context 'when balance lower than withdraw amount' do
      it 'raises and error' do
      expect { my_account.withdraw(10) }.to raise_error('Insuficient funds.')
      end
    end
    context 'when balance is higher than withdraw amount' do
      it 'deducts amount from balance' do
        my_account.deposit(10)
        my_account.withdraw(5)
        expect(my_account.balance).to eq 5
      end
      it 'creates a record with no credit value' do
        my_account.deposit(10)
        my_account.withdraw(5)
        expect(my_account.transaction.logs[1][:credit]).to eq ''
      end
      it 'creates a record in logs with date, debit and balance' do
        my_account.deposit(10)
        my_account.withdraw(5)
        expect(my_account.transaction.logs[1]).to eq({:date=>Time.now.strftime("%m/%d/%Y"), :credit=>"", :debit=>5, :balance=>5})
      end
    end
  end
end
