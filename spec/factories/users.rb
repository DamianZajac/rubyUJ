FactoryGirl.define do
  factory :user do
    sequence(:first_name) { |n| "John#{n}"}
    sequence(:last_name) { |n| "Smith#{n}"}
    sequence(:email) { |n| "js#{n}@gaa.com"}
    password 'password'
  end
  
  factory :admin, class: User do
    sequence(:first_name) { |n| "Admin John#{n}"}
    sequence(:last_name) { |n| "Admin Smith#{n}"}
    sequence(:email) { |n| "js#{n}@gaa.com"}
    password 'password'
    admin true
  end
end