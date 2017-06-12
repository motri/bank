# It understands printing transaction history
class Printer
  attr_accessor :display

  def display(array)
    puts 'date || credit || debit || balance'
    array.reverse.each do |transaction|
      puts [
        transaction[:date],
        transaction[:credit],
        transaction[:debit],
        transaction[:balance]
      ].join(' || ')
    end
  end
end
