module Refinery
  module PracticeAreas
    module Admin
      class PracticeAreasController < ::Refinery::AdminController

        crudify :'refinery/practice_areas/practice_area',
                :title_attribute => 'name'

        private

        # Only allow a trusted parameter "white list" through.
        def practice_area_params
          params.require(:practice_area).permit(:name, :blurb, :description)
        end
      end
    end
  end
end
