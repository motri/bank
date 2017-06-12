# IT understand account management

class Account
  attr_accessor :my_balance, :transaction, :printer

  def initialize
    @my_balance = Balance.new
    @transaction = History.new
    @printer = Printer.new
  end

  def balance
    @my_balance.total
  end

  def deposit(amount)
    @my_balance.add(amount)
    record_deposit(amount)
    log_and_reset
  end

  def withdraw(amount)
    @my_balance.deduct(amount)
    record_withdraw(amount)
    log_and_reset
  end

  def print_transaction_history
    @printer.display(@transaction.logs)
  end

  private

  def record_deposit(amount)
    @transaction.add_record(amount, '', @my_balance.total)
  end

  def record_withdraw(amount)
    @transaction.add_record('', amount, @my_balance.total)
  end

  def log_and_reset
    @transaction.add_log
    @transaction.reset_record
  end
end
