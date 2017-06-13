# It understands transaction history
class History
  attr_accessor :logs

  def initialize
    @logs = []
  end
end
