# Understand changes in account

class Account
  attr_accessor :my_balance, :transaction

  def initialize
    @my_balance = Balance.new
    @transaction = History.new
  end

  def balance
    @my_balance.total
  end

  def deposit(amount)
    @my_balance.add(amount)
    record_deposit(amount)
  end

  private

  def record_deposit(amount)
    @transaction.add_record(amount, '', @my_balance.total)
    @transaction.add_log
    @transaction.reset_record
  end

end
