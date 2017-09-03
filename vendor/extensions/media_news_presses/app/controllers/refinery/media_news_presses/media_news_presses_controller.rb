module Refinery
  module MediaNewsPresses
    class MediaNewsPressesController < ::ApplicationController

      before_action :find_all_media_news_presses
      before_action :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @media_news_press in the line below:
        present(@page)
      end

      def show
        @media_news_press = MediaNewsPress.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @media_news_press in the line below:
        present(@page)
      end

    protected

      def find_all_media_news_presses
        @media_news_presses = MediaNewsPress.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/media_news_presses").first
      end

    end
  end
end
