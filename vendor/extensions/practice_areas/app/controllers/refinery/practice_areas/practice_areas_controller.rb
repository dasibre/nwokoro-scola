module Refinery
  module PracticeAreas
    class PracticeAreasController < ::ApplicationController

      before_action :find_all_practice_areas
      before_action :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @practice_area in the line below:
        present(@page)
      end

      def show
        @practice_area = PracticeArea.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @practice_area in the line below:
        present(@page)
      end

    protected

      def find_all_practice_areas
        @practice_areas = PracticeArea.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/practice_areas").first
      end

    end
  end
end
