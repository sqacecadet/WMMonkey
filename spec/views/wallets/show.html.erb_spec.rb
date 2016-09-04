require 'rails_helper'

RSpec.describe "wallets/show", type: :view do
=begin
  before(:each) do
    @wallet = assign(:wallet, Wallet.create!(
      :name => "Name",
      :total => 2.5,
      :user => FactoryGirl.create(:user)
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(//)
  end
=end
end
