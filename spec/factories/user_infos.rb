FactoryBot.define do
  factory :user_info do
    weight{"175"}
    height{"70"}
    BMI{"25"}
    association :user
  end
end
