require 'rails_helper'

describe 'navigate' do
	before do
		@admin_user = FactoryGirl.create(:admin_user)
		login_as(@admin_user, :scope => :user)
	end

	describe 'edit' do
     before do
       @spent = FactoryGirl.create(:spent)
     end

    it 'has a status that can be edited on the form' do
      visit edit_spent_path(@spent)
      choose('spent_status_approved')
      click_on "Save"
      expect(@spent.reload.status).to eq('approved')
    end
	end
end
