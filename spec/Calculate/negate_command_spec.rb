require 'spec_helper'

describe 'NegateCommand' do
  let(:command) {NegateCommand.new}
  let(:calc) {Calculator.new(-10)}
  
  it 'performs negate' do
    expect(command.execute(calc)).to eq(10)
  end

end