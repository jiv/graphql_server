FactoryBot.define do
  factory :course do
    title       { Faker::Lorem.sentence }
    slug        { Faker::Lorem.sentence }
    instructor
  end
end
