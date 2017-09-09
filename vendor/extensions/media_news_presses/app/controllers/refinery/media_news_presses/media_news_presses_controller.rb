module Refinery
  module MediaNewsPresses
    class MediaNewsPressesController < ::ApplicationController

      before_action :find_all_media_news_presses
      before_action :find_page
      before_action :find_all_media_news_links, :only => [:index]
      before_action :find_all_media_news_cases, :only => [:index]
      before_action :find_all_press_release, :only => [:index]

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @media_news_press in the line below:
        present(@page)
      end

      def show
        @media_news_press = MediaNewsPress.friendly.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @media_news_press in the line below:
        present(@page)
      end

    protected

      def find_all_media_news_links
        @news_links = MediaNewsPress.news_links
      end

      def find_all_media_news_cases
        @cases = MediaNewsPress.case_links
      end

      def find_all_press_release
        @presses = MediaNewsPress.press_release
      end


      def find_all_media_news_presses
        @media_news_presses = MediaNewsPress.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/media_news_presses").first
      end

    end
  end
end
