FactoryGirl.define do
  factory :user do
    first_name { FFaker::Name.first_name }
    last_name { FFaker::Name.last_name }
    email { "test_#{FFaker::Internet.email}" }
    password 'password'
    admin false
  end

  trait :admin do
    admin true
  end
end
