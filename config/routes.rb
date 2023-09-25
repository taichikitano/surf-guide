Rails.application.routes.draw do

  devise_for :visiters, controllers: {
    sessions:      'visiters/sessions',
    passwords:     'visiters/passwords',
    registrations: 'visiters/registrations'
  }
  devise_for :guides, controllers: {
    sessions:      'guides/sessions',
    passwords:     'guides/passwords',
    registrations: 'guides/registrations'
  }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root to: "guidances#home"
  get '/surf_point/:id', to: 'guidances#search'
  resources :guidances do
    collection do
     get "guide_home", to: "guidances#guide_home"
    end
  end
end
