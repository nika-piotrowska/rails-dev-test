FactoryBot.define do
  sequence(:email) { |n| "user#{n}@user.com" }

  factory :user do
    email { generate(:email) }
    first_name { Faker::Name.female_first_name }
    last_name { Faker::Name.last_name }
    password { 'Password!' }
    credit_card { Faker::Finance.credit_card(:mastercard, :visa) }
  end
end
