
FactoryGirl.define do
  factory :practice_area, :class => Refinery::PracticeAreas::PracticeArea do
    sequence(:name) { |n| "refinery#{n}" }
  end
end

