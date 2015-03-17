Rails.application.routes.draw do
  resources :units do
    resources :subjects do
      resources :lessons
    end
  end
end
