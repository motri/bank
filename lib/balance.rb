# It understands account balance
class Balance
  attr_accessor :total

  def initialize
    @total = 0
  end

  def deposit(amount)
    @total += amount
  end
end
