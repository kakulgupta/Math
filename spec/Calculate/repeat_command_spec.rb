require 'spec_helper'

describe 'RepeatCommand' do
  let(:history) {[]}
  let(:calc) {Calculator.new(0)}
  it 'performs repeat' do
    history.push(AddCommand.new(5))
    history.push(MulCommand.new(2))
    command = RepeatCommand.new(2, history)
    expect(command.execute(calc)).to eq(10)
  end

end