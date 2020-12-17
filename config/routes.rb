Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations',
                                    sessions: 'users/sessions'
                                  }

  get 'home/index'
  resources :authors
  get 'new_author', to: 'authors#new'
  get 'new_book', to: 'books#new'
  get 'books', to: 'books#index'  
  get 'comments', to: 'comments#index'  

  get 'view_book', to: 'books#show'                               
                             
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
