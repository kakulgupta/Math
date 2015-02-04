require 'spec_helper'

  describe 'Parse' do
  let(:command1) {Parse.new}
  let(:command2) {Parse.new(4)}
  let(:command3) {Parse.new(8)}
  let(:command4) {Parse.new(-4)}
  let(:command5) {Parse.new(2)}

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

    it 'absolute value' do
      expect(command4.parsing("Absolute")).to eq(4)
    end

    it 'negates value' do
      expect(command4.parsing("Negate")).to eq(4)
    end

    it 'sqrt value' do
      expect(command2.parsing("Sqrt")).to eq(2)
    end

    it 'square value' do
      expect(command4.parsing("Square")).to eq(16)
    end

    it 'cuberoot value' do
      expect(command3.parsing("Cuberoot")).to eq(2)
    end

    it 'cube value' do
      expect(command5.parsing("Cube")).to eq(8)
    end

    it 'to reset' do
      expect(command1.parsing("Cancel")).to eq(0)
    end

  end


