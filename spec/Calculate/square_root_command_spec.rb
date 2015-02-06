require 'spec_helper'

describe 'SquareRootCommand' do
  let(:command) {SquareRootCommand.new}
  let(:calc) {Calculator.new(4)}
  
  it 'performs square root' do
    expect(command.execute(calc)).to eq(2)
  end

end