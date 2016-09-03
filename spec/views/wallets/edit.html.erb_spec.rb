require 'rails_helper'

RSpec.describe "wallets/edit", type: :view do
  before(:each) do
    @wallet = assign(:wallet, Wallet.create!(
      :name => "MyString",
      :total => 1.5,
      :user => nil
    ))
  end

  it "renders the edit wallet form" do
    render

    assert_select "form[action=?][method=?]", wallet_path(@wallet), "post" do

      assert_select "input#wallet_name[name=?]", "wallet[name]"

      assert_select "input#wallet_total[name=?]", "wallet[total]"

      assert_select "input#wallet_user_id[name=?]", "wallet[user_id]"
    end
  end
end
