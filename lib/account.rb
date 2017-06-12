class Account
  attr_reader :balance
  def initialize
    @my_balance = Balance.new
    @balance = @my_balance.total
  end
end
