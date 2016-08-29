require 'rails_helper'

RSpec.describe Spent, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"  
  describe "creation" do
  	before do 
  	  @spent = Spent.create(value: '3,14', date: Date.today, description:'first spent')
    end

    it "can be created" do       
      expect(@spent).to be_valid
    end

    it "it cannot be created without value, date and description" do
      @spent.value = nil
      @spent.date = nil
      @spent.description = nil

      expect(@spent).to_not be_valid
    end

  end
end
