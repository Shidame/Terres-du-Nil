FactoryGirl.define do
  factory :user do |f|
    f.username "Ramses"
    f.email "#{:username}@example.com"
    f.password "secret"
    f.password_confirmation "secret"
  end
end
