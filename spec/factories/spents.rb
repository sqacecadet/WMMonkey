FactoryGirl.define do

  factory :spent do
    value 1.5
    date Date.today
    description "Test1"
    user(:user)
  end

  factory :spent2, class: "Spent" do
    value 1.5
    date Date.yesterday
    description "Test2"
    user(:user)
  end

  factory :spent3, class: "Spent" do
    value 1.5
    date Date.yesterday
    description "Test3"
    user(:user)
  end

end
