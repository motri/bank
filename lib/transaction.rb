# understands single transactions
class Transaction
  attr_accessor :date, :credit, :debit, :balance

  def initialize(deposit, withdraw, balance)
    @date = Time.now.strftime('%m/%d/%Y')
    @credit = deposit
    @debit = withdraw
    @balance = balance
  end
end
