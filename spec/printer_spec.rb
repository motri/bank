require 'printer'

describe 'Printer' do
  let(:printer) { Printer.new }

  describe '#print' do
    it '"puts date || credit || debit || balance" and iterates through array' do
      @transaction = []
      @transaction << Transaction.new(20, '', 20)
      @transaction << Transaction.new(15, '', 35)
      expect { printer.display(@transaction) }.to output(
        "date || credit || debit || balance\n" \
        "#{Time.now.strftime('%m/%d/%Y')} || 15 ||  || 35\n" \
        "#{Time.now.strftime('%m/%d/%Y')} || 20 ||  || 20\n"
      ).to_stdout
    end
  end
end
