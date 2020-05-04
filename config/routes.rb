Rails.application.routes.draw do
  root 'static_page#index'
  get 'static_page/team'
  get 'static_page/contact'
  get 'welcome/:id',  to: 'user#welcome'
  get 'gossip/:id', to: 'gossip#show'
  get 'user/:id', to: 'user#profile'
end
