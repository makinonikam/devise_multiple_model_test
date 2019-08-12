Rails.application.routes.draw do
  devise_for :admins, controllers: {
    sessions:      'admins/sessions',
    passwords:     'admins/passwords',
    registrations: 'admins/registrations'
  }

  devise_for :users, controllers: {
    sessions:      'users/sessions',
    passwords:     'users/passwords',
    registrations: 'users/registrations'
  }

  get root to: 'top#toppage'
  get 'user_index' => 'top#user_index'
  get 'admin_index' => 'top#admin_index'
  get 'top/show' => 'top#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
