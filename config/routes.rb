Rails.application.routes.draw do

#会員
  root to: 'public/homes#top'
  get '/about' => 'public/homes#about', as: 'about'

  devise_for :admins
  devise_for :customers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
