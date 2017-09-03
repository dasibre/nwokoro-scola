
FactoryGirl.define do
  factory :media_news_press, :class => Refinery::MediaNewsPresses::MediaNewsPress do
    sequence(:title) { |n| "refinery#{n}" }
  end
end

