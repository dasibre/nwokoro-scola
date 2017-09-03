
FactoryGirl.define do
  factory :section, :class => Refinery::MediaNewsPresses::Section do
    sequence(:name) { |n| "refinery#{n}" }
  end
end

