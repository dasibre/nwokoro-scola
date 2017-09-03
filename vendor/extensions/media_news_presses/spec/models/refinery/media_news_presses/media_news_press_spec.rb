require 'spec_helper'

module Refinery
  module MediaNewsPresses
    describe MediaNewsPress do
      describe "validations", type: :model do
        subject do
          FactoryGirl.create(:media_news_press,
          :title => "Refinery CMS")
        end

        it { should be_valid }
        its(:errors) { should be_empty }
        its(:title) { should == "Refinery CMS" }
      end
    end
  end
end
