require 'rails_helper'

RSpec.describe "wallets/index", type: :view do
  before(:each) do
    assign(:wallets, [
      Wallet.create!(
        :name => "Name",
        :total => 2.5,
        :user => FactoryGirl.create(:user)
      ),
      Wallet.create!(
        :name => "Name",
        :total => 2.5,
        :user => FactoryGirl.create(:user)
      )
    ])
  end

  it "renders a list of wallets" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 2.5.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
