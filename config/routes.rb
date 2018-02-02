Rails.application.routes.draw do
  resources :problems
  get 'pages/home'

  get 'pages/discussion'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
