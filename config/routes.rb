ContestEngine::Application.routes.draw do
  match '/' => 'contests#index', :via => :get
  match 'contests' => 'contests#index', :via => :get
  match 'contest/new' => 'contests#new', :via => :get
  match 'contest/:id' => 'contests#show', :via => :get
  match 'contest/:id/:title' => 'contests#show', :via => :get
  match 'contest' => 'contests#create', :via => :post

  
  root :to => 'welcome#index'
end
