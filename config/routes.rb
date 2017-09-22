Rails.application.routes.draw do
  devise_for :users
  root 'static_pages#index'
  namespace :instructor do
    resource :courses, only: [:new, :create, :show]
  end
end
