require 'spec_helper'

  describe 'Parse' do
  let(:command1) {Parse.new}

  it 'add number' do
    expect(command1.parsing("Add 5")).to eq(5)
  end

  it 'subtract number' do
    expect(command1.parsing("Subtract 2")).to eq(-2)
  end

  it 'multiply number' do
    expect(command1.parsing("Multiply 3")).to eq(0)
  end
  
  it 'divide number' do
    expect(command1.parsing("Divide 3")).to eq(0)
  end

  it 'to reset' do
    expect(command1.parsing("Cancel")).to eq(0)
  end
  
end

