FactoryGirl.define do

  factory :user do
    first_name 'anderson'
    last_name 'silva'
    email Faker::Internet.email('qy')
    password "asdfasdf"
    password_confirmation "asdfasdf"
  end

  factory :user2 do
    first_name 'anderson'
    last_name 'silva'
    email Faker::Internet.email('y')
    password "asdfasdf"
    password_confirmation "asdfasdf"
  end

  factory :user3 do
    first_name 'anderson'
    last_name 'silva'
    email Faker::Internet.email('q')
    password "asdfasdf"
    password_confirmation "asdfasdf"
  end

  factory :admin_user, class: "AdminUser" do
    first_name 'Admin'
    last_name 'User'
    email Faker::Internet.email('poiuy')
    password "asdfasdf"
    password_confirmation "asdfasdf"
  end
end
