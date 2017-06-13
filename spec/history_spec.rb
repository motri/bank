require 'history'

describe History do
  let(:history) { History.new }

  it 'initializes an empty logs array' do
    expect(history.logs).to eq []
  end
end
