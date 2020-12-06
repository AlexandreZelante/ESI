FactoryBot.define do
  factory :coach_comment do
    text { "MyString" }
    coach_id { nil }
    user_id { nil }
  end
end
