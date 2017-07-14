FactoryGirl.define do
  factory :storyline do
    title     { Faker::Name.name }
    hero      { Faker::Name.name }
    sidekick  { Faker::Name.name }
    victim    { Faker::Name.name }
    villain   { Faker::Name.name }
    plot      { Storyline.plot["Overcoming the Monster"] }
  end
end
