# It understands account balance
class Balance
  attr_accessor :total

  def initialize
    @total = 0
  end

  def deposit(amount)
    @total += amount
  end

  def withdraw(amount)
    raise 'Insuficient funds.' if @total - amount < 0
    @total -= amount
  end
end
