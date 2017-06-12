# It understands printing transaction history
class Printer
  attr_accessor :display

  def display(array)
    array.reverse!
    puts 'date || credit || debit || balance'
    (0..array.length - 1).each do |i|
      puts array[i][:date].to_s + '||' + array[i][:credit].to_s + '||' + array[i][:debit].to_s + '||' + array[i][:balance].to_s
    end
  end
end
