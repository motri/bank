require 'history'

describe History do
  let(:history) { History.new }
  it 'initializes an empty record hash' do
    p history.record
    expect(history.record).to be_empty

  end
end
