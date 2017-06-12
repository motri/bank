class History
  attr_accessor :record, :logs

  def initialize
    @record = Array.new
    @logs = []
  end
end
