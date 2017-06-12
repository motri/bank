require 'printer'

describe 'Printer' do
  let(:printer) { Printer.new }

  describe '#print' do
    it '"puts date || credit || debit || balance" and iterates through array' do
      transactions = [{
        date: Time.now.strftime('%m/%d/%Y'),
        credit: 20,
        debit: '',
        balance: 20
      },
                      {
                        date: Time.now.strftime('%m/%d/%Y'),
                        credit: 15,
                        debit: '',
                        balance: 35
                      }]
      expect { printer.display(transactions) }.to output(
        "date || credit || debit || balance\n" \
        "06/12/2017||15||||35\n" \
        "06/12/2017||20||||20\n"
      ).to_stdout
    end
  end
end
