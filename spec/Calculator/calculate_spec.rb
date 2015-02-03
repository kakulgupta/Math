require 'spec_helper'

  describe 'Calculate' do
  let(:num1) {Calculate.new()}

  it 'add number' do
    expect(num1.extract_command("Add 5")).to eq(5)
  end
  it 'subtract number' do
    expect(num1.extract_command("Subtract 2")).to eq(-2)
  end
  it 'multiply number' do
    expect(num1.extract_command("Multiply 3")).to eq(0)
  end
  it 'divide number' do
    expect(num1.extract_command("Divide 3")).to eq(0)
  end

  it 'multiple operations' do
    expect(num1.extract_command("Add 5")).to eq(5)
    expect(num1.extract_command("Subtract 2")).to eq(3)
    expect(num1.extract_command("Multiply 3")).to eq(9)
    expect(num1.extract_command("Divide 3")).to eq(3)
  end
  
end


