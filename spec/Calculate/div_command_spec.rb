require 'spec_helper'

describe 'DivCommand' do
  let(:command) { DivCommand.new(5)}
  let(:calc) {Calculator.new(10)}
  
  it 'performs division' do
    expect(command.execute(calc)).to eq(2)
  end

end