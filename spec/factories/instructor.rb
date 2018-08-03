FactoryBot.define do
  factory :instructor do
    name        { Faker::GameOfThrones.character }
  end
end
