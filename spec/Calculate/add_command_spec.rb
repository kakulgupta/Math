require 'spec_helper'

describe 'AddCommand' do
  let(:command) { AddCommand.new(5)}
  let(:calc) {Calculator.new(2)}
  
  it 'performs addition' do
    expect(command.execute(calc)).to eq(7)
  end

end