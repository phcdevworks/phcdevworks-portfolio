PhcdevworksPortfolio::Engine.routes.draw do

  # Portfolio Routes
  namespace :portfolio do
    resources :posts
  end

  # Mount Routes
  mount PhcdevworksAccounts::Engine, :at => '/'

end
