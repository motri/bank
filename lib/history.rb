# It understands transaction history
class History
  attr_accessor :logs

  def initialize
    @logs = []
  end

  def add_record(deposit, withdraw, balance)
    record = {
      date: Time.now.strftime('%m/%d/%Y'),
      credit: deposit,
      debit: withdraw,
      balance: balance
    }
    @logs << record
  end
end
