Rails.application.routes.draw do
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create]

  resources :custom_surveys, only: [:create]

  resources :surveys do
    resources :questions, only: [:show, :new, :create]
    resources :text_styles, only: [:create, :new]
    resources :multi_choice_styles, only: [:new, :create, :show]
    resources :responses, only: [:index]
  end

  resources :questions, only: [] do
    resources :text_answers, only: [:create]
    resources :multi_choice_answers, only: [:create]
  end

  resources :multi_choice_styles, only: [] do
    resources :multi_choice_options, only: [:new, :create, :show]
  end

  root "surveys#index"
end
