class History
  attr_accessor :record, :logs

  def initialize
    @record = {}
    @logs = []
  end

  def add_record(deposit, withdraw, balance)
    @record[:date] = Date.new
    @record[:credit] = deposit
    @record[:debit] = withdraw
    @record[:balance] = balance
  end

  def add_log
    @logs << @record
  end

  def reset_record
    @record = {}
  end

end
