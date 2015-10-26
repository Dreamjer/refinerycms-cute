
FactoryGirl.define do
  factory :cute, :class => Refinery::Cutes::Cute do
    sequence(:name) { |n| "refinery#{n}" }
  end
end

