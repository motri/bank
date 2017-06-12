require 'printer'

describe 'Printer' do
  let(:printer) { Printer.new }

  describe '#print' do
    it 'prints date || credit || debit || balance and iterates through hash ' do
      @array = [{ date: Time.now.strftime('%m/%d/%Y'), credit: 10, debit: '', balance: 20 }]
      expect { printer.display(@array) }.to output("date || credit || debit || balance\n06/12/2017||10||||20\n").to_stdout
    end
  end
end
