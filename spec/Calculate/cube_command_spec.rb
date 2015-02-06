require 'spec_helper'

describe 'CubeCommand' do
  let(:command) {CubeCommand.new}
  let(:calc) {Calculator.new(3)}
  
  it 'performs cube' do
    expect(command.execute(calc)).to eq(27)
  end

end