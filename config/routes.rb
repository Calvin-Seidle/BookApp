Rails.application.routes.draw do
  

  post '/rate' => 'rater#create', :as => 'rate'
  resources :booklists do
  	resources :comments
  end	

  devise_for :users
  # get 'welcome/index'
  # get 'booking/index'

  root 'welcome#index'

  get '/home' => 'welcome#index' # override default routes.
  get '/books' => 'booklists#index'
  get '/booking' => 'booking#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
