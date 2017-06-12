# Understand changes in account

class Account
  attr_accessor :my_balance, :transaction, :balance


  def initialize
    @my_balance = Balance.new
    @transaction = History.new
  end

  def balance
    @my_balance.total
  end


  def deposit(amount)
    @my_balance.add(amount)
    @history.add_deposit(amount, @my_balance.total)
  end


end
