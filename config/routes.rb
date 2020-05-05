Rails.application.routes.draw do

  root 'static_page#index'
  get 'static_page/team'
  get 'static_page/contact'
  get 'welcome/:id',  to: 'user#welcome'
  get 'user/:id', to: 'user#profile'
  resources 'gossips'
end
