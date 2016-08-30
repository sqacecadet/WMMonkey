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
end