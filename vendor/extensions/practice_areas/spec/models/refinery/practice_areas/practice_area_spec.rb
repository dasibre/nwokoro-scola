require 'spec_helper'

module Refinery
  module PracticeAreas
    describe PracticeArea do
      describe "validations", type: :model do
        subject do
          FactoryGirl.create(:practice_area,
          :name => "Refinery CMS")
        end

        it { should be_valid }
        its(:errors) { should be_empty }
        its(:name) { should == "Refinery CMS" }
      end
    end
  end
end
