# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :log do
    name "MyText"
    title "MyString"
    user_id 1
    goal_id 1
  end
end
