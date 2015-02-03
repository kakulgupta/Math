require 'spec_helper'

  describe 'Calculate' do
  let(:num1) {Calculate.new()}

  it 'add number' do
    expect(num1.add(5)).to eq(5)
  end

  it 'subtract number' do
    expect(num1.subtract(2)).to eq(-2)
  end

  it 'multiply number' do
    expect(num1.multiply(4)).to eq(0)
  end
  
  it 'divide number' do
    expect(num1.divide(3)).to eq(0)
  end
  
end


