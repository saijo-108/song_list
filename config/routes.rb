Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions',
    omniauth_callbacks: "omniauth_callbacks"
  }
  root 'top_pages#top'
  resources :lists do
    resources :songs, only: [:create, :index, :new]
    collection do
      get 'search'
    end
  end
end
