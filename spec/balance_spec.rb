require 'balance'

describe Balance do
  describe 'initial total' do
    let(:balance) { Balance.new }
    it 'is initialized with a value of 0' do
      expect(balance.total).to eq 0
    end
  end
  describe '#deposit, allows you to add to your balance' do
    let(:balance) { Balance.new }
    it'the amount is added to your current total' do
      balance.deposit(50)
      expect(balance.total).to eq 50
    end
  end
  describe '#withdraw' do
    let(:balance) { Balance.new }
    context 'when balance is 0' do
      it 'raises an error' do
        expect { balance.withdraw(10) }.to raise_error('Insuficient funds.')
      end
    end
  end
end
