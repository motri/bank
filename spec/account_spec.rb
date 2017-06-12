require 'account'

describe Account do
  let(:my_account) { Account.new }
  describe 'It initializes a new balance,' do
    it 'with a total of 0' do
      expect(my_account.balance).to eq 0
    end
  end
end
