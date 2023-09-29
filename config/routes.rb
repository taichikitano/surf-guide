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

  root to: 'guidances#home'
  resources :guidances do
    collection do
      get '/surf_point/:id', to: 'guidances#search'
    end
  end
end
