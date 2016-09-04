FactoryGirl.define do
  factory :spent do
    value 1.5
    date Date.today
    description "test1"
    user
  end

  factory :spent2, class: "Spent" do
    value 1.5
    date Date.yesterday
    description "test2"
    user
  end

end
