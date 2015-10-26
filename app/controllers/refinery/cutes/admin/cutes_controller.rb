module Refinery
  module Cutes
    module Admin
      class CutesController < ::Refinery::AdminController

        crudify :'refinery/cutes/cute',
                :title_attribute => 'name'

        private

        # Only allow a trusted parameter "white list" through.
        def cute_params
          params.require(:cute).permit(:name, :project, :description)
        end
      end
    end
  end
end
