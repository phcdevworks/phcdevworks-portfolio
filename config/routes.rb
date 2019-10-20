PhcdevworksPortfolio::Engine.routes.draw do

  # Project Routes
  namespace :project do
    resources :posts, class_name: "Project::Post"
  end

  # Frontend Routes
  namespace :website do
    resources :pages, only: [:index, :show]
  end

  # Mount Routes
  mount PhcdevworksAccounts::Engine, :at => '/'

end
