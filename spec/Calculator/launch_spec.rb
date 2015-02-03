require 'spec_helper'

describe 'Launch' do

  it "test the launch" do
    
    calci = Parse.new
    allow(Parse).to receive(:new) { calci }
    allow(Kernel).to receive(:gets) { "Add 5" }
    expect(calci).to receive(:parsing).with("Add 5")

    app = Launch.new
    app.start_test
    
  end

end 