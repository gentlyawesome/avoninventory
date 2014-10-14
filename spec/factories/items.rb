# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :item do
    description "MyText"
    quantity 1
    user_id 1
  end
end
