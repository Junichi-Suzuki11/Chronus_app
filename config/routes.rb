Rails.application.routes.draw do

  devise_for :administrators, controllers: {
    sessions:      'administrators/sessions',
    passwords:     'administrators/passwords',
    registrations: 'administrators/registrations'
  }
  devise_for :users, controllers: {
    sessions:      'users/sessions',
    passwords:     'users/passwords',
    registrations: 'users/registrations'
  }

	get '/about' => 'user/homes#about'
  root 'user/homes#top'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
