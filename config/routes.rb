Rails.application.routes.draw do
  

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, controllers: { registrations: "registrations" }
  root 'home#index'

  resources :quizzes
  get '/quizzes/:id/leaderboard' => "quizzes#leaderboard"
  post '/quizzes/:id' => "quizzes#check_answer"

  get '/home/leaderboard' => "home#user_board"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
