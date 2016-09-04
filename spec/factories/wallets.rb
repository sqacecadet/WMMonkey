FactoryGirl.define do
  factory :wallet do
    name "MyString"
    total 1.5
    user FactoryGirl.create(:user)
  end
end
