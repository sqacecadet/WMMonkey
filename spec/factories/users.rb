FactoryGirl.define do
  sequence :email do |n|
      "anothere#{n}@example.com"
  end

  factory :user do
    first_name 'anderson'
    last_name 'silva'
    email { generate :email }
    password "asdfasdf"
    password_confirmation "asdfasdf"
  end

  factory :admin_user, class: "AdminUser" do
    first_name 'Admin'
    last_name 'User'
    email { generate :email }
    password "asdfasdf"
    password_confirmation "asdfasdf"
  end
end
