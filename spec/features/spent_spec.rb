require 'rails_helper'

describe 'navigate' do
  before do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
  end

	describe 'index' do
    before do
      visit spents_path
    end
    it 'can be reached sucessfully' do
      expect(page.status_code).to eq(200)
  	end
    it 'Spent need to have a value and date and a description' do
      expect(page).to have_content(/Spents/)
    end
    it 'has a list of spents' do
      spent1 = FactoryGirl.create(:spent)
      spent2 = FactoryGirl.create(:spent2)
      visit spents_path
      expect(page).to have_content(/test1|test2/)
    end
  end

  describe 'creation' do
    before do
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

  describe "edit" do
    before do
     @spent = FactoryGirl.create(:spent)
    end

    it 'can be reached by clicking edit on index page' do
      visit spents_path
      click_on "edit_#{@spent.id}"
      expect(page.status_code).to eq(200)
    end
    it 'can be edited' do
      visit edit_spent_path(@spent)

      fill_in 'spent[value]', with: "19.90"
      fill_in 'spent[date]', with: Date.today
      fill_in 'spent[description]', with: "Edited Content"
      click_on "Save"
      expect(page).to have_content("Edited Content")
    end
  end

  describe "New" do
    it "has a link on hamepage" do
      visit root_path

      click_link("new_post_from_nav")
      expect(page.status_code).to eq(200)
    end
  end

  describe "Delete" do
    it "can be deleted" do
      spent = FactoryGirl.create(:spent)
      visit spents_path
      click_link("delete_post_#{spent.id}_from_index")
      expect(page.status_code).to eq(200)
    end
  end

end
