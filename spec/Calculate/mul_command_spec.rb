require 'spec_helper'

describe 'MulCommand' do
  let(:command) { MulCommand.new(5)}
  let(:calc) {Calculator.new(2)}
  
  it 'performs multiplication' do
    expect(command.execute(calc)).to eq(10)
  end

end