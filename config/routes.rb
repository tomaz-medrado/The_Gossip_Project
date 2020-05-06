Rails.application.routes.draw do


  get 'categories/index'
  get 'categories/show'
  get 'categories/update'
  get 'categories/destroy'
  get 'categories/new'
  get 'categories/edit'
  root 'static_page#index'
  get 'static_page/team'
  get 'static_page/contact'
  get 'welcome/:id',  to: 'user#welcome'
  get 'user/:id', to: 'user#profile'

  resources 'gossips' do
    resources 'comentarios'
  end

  resources 'categories' 
end