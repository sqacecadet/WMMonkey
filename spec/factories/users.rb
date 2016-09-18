FactoryGirl.define do

	sequence :email do |n|
    "test#{n}@example.com"
  end

  factory :user do
    first_name 'anderson'
    last_name 'silva'
    # email Faker::Internet.email('user1')
    email { generate :email }
    password "asdfasdf"
    password_confirmation "asdfasdf"
  end

  factory :user2 do
    first_name 'anderson'
    last_name 'silva'
    # email Faker::Internet.email('uder2')
    email { generate :email }
    password "asdfasdf"
    password_confirmation "asdfasdf"
  end
 
  factory :user3 do
    first_name 'anderson'
    last_name 'silva'
    # email Faker::Internet.email('user3')
    email { generate :email }
    password "asdfasdf"
    password_confirmation "asdfasdf"
  end

  factory :admin_user, class: "AdminUser" do
    first_name 'Admin'
    last_name 'User'
    # email Faker::Internet.email('admin')
    email { generate :email }
    password "asdfasdf"
    password_confirmation "asdfasdf"
  end
end
