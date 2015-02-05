require 'spec_helper'

  describe 'Parse' do
    let(:parser){Parse.new}
    it 'add number command' do
      expect(parser.parsing("add 5").class).to eq(AddCommand)
    end

    it 'subtract number command' do
      expect(parser.parsing("subtract 2").class).to eq(SubCommand)
    end

    it 'multiply number command' do
      expect(parser.parsing("multiply 3").class).to eq(MulCommand)
    end

    it 'divide number command' do
      expect(parser.parsing("divide 3").class).to eq(DivCommand)
    end

  end


