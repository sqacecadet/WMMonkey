require 'rails_helper'

RSpec.describe User, type: :model do
    before do
      @user = FactoryGirl.create(:user)
    end

  #pending "add some examples to (or delete) #{__FILE__}"
  describe "creation" do
    it "can be created" do
      expect(@user).to be_valid
    end

    it "it cannot be created without first_name, last_name" do
      @user.first_name = nil
      @user.last_name = nil

      expect(@user).to_not be_valid
    end
  end

  describe "custom name methods"
    it 'will have a method that combines fisrt and last name' do
      expect(@user.last_name).to eq("Ragnar", "LothBrok")
    end


end
