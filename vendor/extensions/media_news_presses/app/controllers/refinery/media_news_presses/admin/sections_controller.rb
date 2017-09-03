module Refinery
  module MediaNewsPresses
    module Admin
      class SectionsController < ::Refinery::AdminController

        crudify :'refinery/media_news_presses/section',
                :title_attribute => 'name'

        private

        # Only allow a trusted parameter "white list" through.
        def section_params
          params.require(:section).permit(:name)
        end
      end
    end
  end
end
