Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'

  get 'categories/index'
  get 'categories/show'
  get 'categories/update'
  get 'categories/destroy'
  get 'categories/new'
  get 'categories/edit'

  get 'static_page/team'
  get 'static_page/contact'

  resources 'users'
  get 'sign_up', to: 'users#new'

  resources 'gossips' do
    resources 'comentarios'
  end

  resources 'categories'
  resources :sessions, only: [:new, :create, :destroy]

  root 'static_page#index'
end
