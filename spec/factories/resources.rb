FactoryBot.define do
  factory :resource do
    title { Faker::Book.title }
    resource_type { RandomData.random_resource_type }
    vendor { Faker::Company.name }
  end
end