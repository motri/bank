# It understands account management
class Account
  attr_accessor :my_balance, :history, :printer, :transaction

  def initialize
    @my_balance = Balance.new
    @history = History.new
    @printer = Printer.new
  end

  def balance
    @my_balance.total
  end

  def deposit(amount)
    @my_balance.add(amount)
    record_deposit(amount)
  end

  def withdraw(amount)
    @my_balance.deduct(amount)
    record_withdraw(amount)
  end

  def print_transaction_history
    @printer.display(@history.logs)
  end

  private

  def record_deposit(amount)
    @history.logs << Transaction.new(amount, '', @my_balance.total)
  end

  def record_withdraw(amount)
    @history.logs << Transaction.new('', amount, @my_balance.total)
  end
end
