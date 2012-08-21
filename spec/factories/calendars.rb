# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :calendar do
    month "MyString"
    year 1
    occured false
    nile_level 1.5
  end
end
