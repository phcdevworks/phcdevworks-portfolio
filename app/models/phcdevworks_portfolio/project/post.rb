module PhcdevworksPortfolio
  class Project::Post < ApplicationRecord

    # Image Upload
    has_one_attached :project_post_image

  end
end
