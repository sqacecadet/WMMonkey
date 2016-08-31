require 'rails_helper'

describe 'navigate' do

	describe 'index' do
      it 'can be reached sucessfully' do
        visit spents_path
        expect(page.status_code).to eq(200)	
	  end

      it 'Spent need to have a value and date and a description' do
        visit spents_path
        expect(page).to have_content(/Spents/)
	  end
	end

    describe 'creation' do 
     before do 
     	user = User.create(email: "test@test.com", password: "asdfasdf", password_confirmation: "asdfasdf", first_name: "Ragnar", last_name: "LothBrok")
        login_as(user, :scope => :user)
        visit new_spent_url
     end
      
     it 'has a form that can be reached' do 
        expect(page.status_code).to eq(200)
     end

     it 'allows users to create a new topic from the /new page' do
        fill_in 'spent[value]', with: "19.90"
        fill_in 'spent[date]', with: Date.today
        fill_in 'spent[description]', with: "Star Wars Is a great movie"
        click_on "Save"

        expect(page).to have_content("Star Wars Is a great movie")
     end

    it 'will have a user asscocieted with ' do 
       fill_in 'spent[value]', with: "19.90"
       fill_in 'spent[date]', with: Date.today
       fill_in 'spent[description]', with: "user_association"
       click_on "Save"

       expect(User.last.spents.last.description).to eq('user_association')
     end
   end
end







