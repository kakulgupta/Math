require 'spec_helper'

describe 'AboluteCommand' do
  let(:command) {AbsoluteCommand.new}
  let(:calc) {Calculator.new(-10)}
  
  it 'performs absolute' do
    expect(command.execute(calc)).to eq(10)
  end

end