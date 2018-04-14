Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#index'

  get '/read', to: 'pages#read'
  get '/by_section', to: 'pages#by_section'
  get '/show_comment/:id', to: 'pages#show_comment', as: "show_comment"
end
