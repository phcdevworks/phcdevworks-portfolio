$:.push File.expand_path("lib", __dir__)
require "phcdevworks_portfolio/version"

Gem::Specification.new do |spec|

    spec.name        = "phcdevworks_members"
    spec.version     = PhcdevworksPortfolio::VERSION
    spec.authors     = ["PHCDevworks"]
    spec.email       = ["info@phcdevworks.com"]
    spec.homepage    = "https://phcdevworks.com/"
    spec.summary     = "Rails 6 - Engine - Potfolio"
    spec.description = "Ruby on Rails 6 Engine to Manage and Organize a Rails site Work Portfolio."
    spec.license     = "MIT"

    # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
    # to allow pushing to a single host or delete this section to allow pushing to any host.
    #if spec.respond_to?(:metadata)
    #spec.metadata["allowed_push_host"] = "TODO: Set to "http://mygemserver.com""
    #else
    #raise "RubyGems 2.0 or newer is required to protect against " \
    #"public gem pushes."
    #end

    spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

    # Main Dependencies
    spec.add_dependency "rails", "~> 6.0"
    spec.add_dependency "jbuilder", "~> 2.9"
    spec.add_dependency "paper_trail", "~> 10.3"

    # Theme Dependencies
    spec.add_dependency "phcthemes_admin_panel_pack", "~> 1.2.3"
    spec.add_dependency "phcthemes_web_theme_pack", "~> 1.1.0"

    # Helper Dependencies
    spec.add_dependency "phcdevworks_core", "~> 1.0.1"
    spec.add_dependency "phcdevworks_active_menus", "~> 1.0.1"
    spec.add_dependency "phcdevworks_notifications", "~> 1.0.1"
    spec.add_dependency "phcdevworks_titleseo", "~> 1.0.1"

    # Frontend Dependencies
    spec.add_dependency "friendly_id", "~> 5.3"
    spec.add_dependency "gravtastic", "~> 3.2"

    # Images & Service Support Dependencies
    spec.add_dependency "aws-sdk-s3", "~> 1.48"
    spec.add_dependency "google-cloud-storage", "~> 1.21"
    spec.add_dependency "mini_magick", "~> 4.9"

    # Security Dependencies
    spec.add_dependency "phcdevworks_accounts", "~> 1.3.0"

    # Development Dependencies
    spec.add_development_dependency "sqlite3", "~> 1.4"

end
