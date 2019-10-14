PhcdevworksPortfolio::Engine.routes.draw do

  # Project Routes
  namespace :project do
    resources :posts
  end

  # Mount Routes
  mount PhcdevworksAccounts::Engine, :at => '/'

end
