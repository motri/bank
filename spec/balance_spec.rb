require 'balance'

describe Balance do
  let(:balance) {Balance.new}
  describe 'initial total' do
    expect(:balance.total).to equal(0)
  end
end
