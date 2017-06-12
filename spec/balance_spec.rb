require 'balance'

describe Balance do
  describe 'initial total' do
    let(:balance) { Balance.new }

    it 'is initialized with a value of 0' do
      expect(balance.total).to eq 0
    end
  end
end
