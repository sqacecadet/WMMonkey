FactoryGirl.define do
  factory :user do
    first_name            Faker::Name.first_name
    last_name             Faker::Name.last_name
    email                { Faker::Internet.email }
    password              "password"
    password_confirmation "password"
  end

  factory :admin_user, class: "AdminUser" do
    first_name 'Admin'
    last_name 'User'
    email { Faker::Internet.email }
    password "asdfasdf"
    password_confirmation "asdfasdf"
  end
end