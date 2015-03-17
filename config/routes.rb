Rails.application.routes.draw do
  root :to => "units#index"
  resources :units do
    resources :subjects do
      resources :lessons
    end
  end
end
