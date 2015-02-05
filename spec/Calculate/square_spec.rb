require 'spec_helper'

describe 'SquareCommand' do
  let(:command) {SquareCommand.new}
  let(:calc) {Calculator.new(10)}
  
  it 'performs square' do
    expect(command.execute(calc)).to eq(100)
  end

end