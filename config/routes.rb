Rails.application.routes.draw do
 # get 'work/index'

  #get 'work/choose_theme'

  #get 'work/display_theme'
 # match 'work', to:'work#index', via: 'get'
  #match 'choose_theme', to:'work#choose_theme', via: 'get'
 # match 'display_theme', to:'work#display_theme', via: 'post'
  resources :values
  resources :images
  resources :themes
  resources :users
  get 'main/index'

  get 'main/help'

  get 'main/contacts'

  get 'main/about'
  get  'help' => 'main#help'
  get  'index' => 'main#index'
  get  'about' => 'main#about'
  get  'work' => 'work#index'
  get  'choose_theme' => 'work#choose_theme'
  get  'display_theme' => 'work#display_theme'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
