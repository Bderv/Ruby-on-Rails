FactoryBot.define do
  factory :person do
    last_name { "Bobson" }
    
    trait :male do
      first_name { "Bob" }
      email { "Bob@bob.com" }
    end

    trait :female do
      first_name { "Bobly" }
      email { "Bobly@bob.com" }
    end

    trait :bademail do
      email { '' }
    end

  end
end
