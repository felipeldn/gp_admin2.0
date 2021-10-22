Rails.application.routes.draw do
  
  get '/clinicians', to: 'clinicians#index'
  post '/signup', to: 'clinicians#sign_up'

  get '/validate', to: 'auth#validate'
  post '/sign_in', to: 'auth#sign_in'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
