require 'spec_helper'

describe 'SubCommand' do
  let(:command) { SubCommand.new(5)}
  let(:calc) {Calculator.new(2)}
  
  it 'performs subtraction' do
    expect(command.execute(calc)).to eq(-3)
  end

end