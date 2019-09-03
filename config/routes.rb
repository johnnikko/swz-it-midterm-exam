Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to:'welcome#index'

  resources 'disasters' do
    resources 'comments'
  end

  resources 'users' do
    resources 'disasters', only: [:index]
  end

  resources 'categories'
end
