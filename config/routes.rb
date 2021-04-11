PhcdevworksPortfolio::Engine.routes.draw do

  # Project Routes
  namespace :project do
    resources :posts, class_name: "Project::Post"
    resources :types, class_name: "Project::Type"
    resources :pages, only: [:index, :show]
  end
  
  # Mount Routes
  mount PhcdevworksAccounts::Engine, :at => '/'
  mount PhcdevworksCoreModules::Engine, :at => '/'

end
