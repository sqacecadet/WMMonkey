require 'rails_helper'

describe 'navigate' do
	before do
		@admin_user = FactoryGirl.create(:admin_user)
		login_as(@admin_user, :scope => :user)
	end

	describe 'edit' do
     before do
       @spent = FactoryGirl.create(:spent)
       visit edit_spent_path(@spent)
     end

    it 'has a status that can be edited on the form' do
      choose('spent_status_approved')
      click_on "Save"
      expect(@spent.reload.status).to eq('approved')
    end

    it 'cannot be edited by a non admin' do
      logout(:user)
      user = FactoryGirl.create(:user)
      login_as(user, :scope => :user)
      visit edit_spent_path(@spent)
      expect(page).to_not have_content('Approved')
    end
    
	end
end
