class History
  attr_accessor :record, :logs

  def initialize
    @record = {}
    @logs = []
  end
  def add_deposit(amount)
    @record[:date] = Date.new
    @record[:deposit] = amount
  end

end
