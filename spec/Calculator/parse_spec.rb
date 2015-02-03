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

    describe 'Chaining' do
      it 'add' do
         expect(command1.parsing("Add 5")).to eq(5)
      end

      it 'subtract' do
        command1.parsing("Add 5")
        expect(command1.parsing("Subtract 2")).to eq(3)
      end

      it 'multiply' do
        command1.parsing("Add 5")
        command1.parsing("Subtract 2")
        expect(command1.parsing("Multiply 2")).to eq(6)
      end
       
      it 'divide' do
        command1.parsing("Add 5")
        command1.parsing("Subtract 2")
        command1.parsing("Multiply 2")
        expect(command1.parsing("Divide 3")).to eq(2)
      end

      it 'checks parsing - cancel' do
        command1.parsing("Add 5")
        command1.parsing("Subtract 2")
        command1.parsing("Multiply 2")
        command1.parsing("Divide 3")
        expect(command1.parsing("Cancel")).to eq(0)
      end
    end
  end


