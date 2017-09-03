module Refinery
  module MediaNewsPresses
    module Admin
      class MediaNewsPressesController < ::Refinery::AdminController

        before_action :find_all_sections, :except => [:show, :destroy]

        crudify :'refinery/media_news_presses/media_news_press'

        private

        def find_all_sections
          @sections = Refinery::MediaNewsPresses::Section.all
        end

        # Only allow a trusted parameter "white list" through.
        def media_news_press_params
          params.require(:media_news_press).permit(:section_id, :title, :date, :photo_id, :blurb, :link)
        end
      end
    end
  end
end
