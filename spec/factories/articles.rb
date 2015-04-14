FactoryGirl.define do
  factory :article do
    sequence(:title) { |n| "Article Title#{n}"}
    sequence(:text) { |n| "Article Text#{n}"}
  end
end