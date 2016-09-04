FactoryGirl.define do

  sequence :email do |n|
    "teste#{n}@example.com"
  end

  factory :user do
    first_name "anderson"
    last_name "lima"
    email { generate :email }
    password "asdfasdf"
    password_confirmation "asdfasdf"
  end

  factory :second_user do
    first_name "anderson"
    last_name "lima"
    email { generate :email }
    password "asdfasdf"
    password_confirmation "asdfasdf"
  end

  factory :adminstrator do
    first_name "admin"
    last_name "lima"
    email "admin@test.com"
    password "asdfasdf"
    password_confirmation "asdfasdf"
  end
end
