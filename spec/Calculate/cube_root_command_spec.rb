require 'spec_helper'

describe 'CubeRootCommand' do
  let(:command) {CubeRootCommand.new}
  let(:calc) {Calculator.new(8)}
  
  it 'performs cube root' do
    expect(command.execute(calc)).to eq(2)
  end

end