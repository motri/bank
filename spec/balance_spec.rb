require 'balance'

describe Balance do
  let(:balance) { Balance.new }
  describe 'initial total' do
    it 'is initialized with a value of 0' do
      expect(balance.total).to eq 0
    end
  end
  describe '#add' do
    it'adds amount to your current total' do
      balance.add(50)
      expect(balance.total).to eq 50
    end
  end
  describe '#deduct' do
    context 'when balance is 0 or lower than withdrawed amount' do
      it 'raises an error' do
        expect { balance.deduct(10) }.to raise_error('Insuficient funds.')
      end
      context 'when balance is higher than withdrawed amount' do
        it 'deducts amount from total' do
          balance.add(50)
          balance.deduct(10)
          expect(balance.total).to eq 40
        end
      end
    end
  end
end
