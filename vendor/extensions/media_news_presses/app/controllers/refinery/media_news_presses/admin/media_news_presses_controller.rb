module Refinery
  module MediaNewsPresses
    module Admin
      class MediaNewsPressesController < ::Refinery::AdminController

        crudify :'refinery/media_news_presses/media_news_press'

        private

        # Only allow a trusted parameter "white list" through.
        def media_news_press_params
          params.require(:media_news_press).permit(:section_id, :title, :date, :photo_id, :blurb)
        end
      end
    end
  end
end
