Rails.application.routes.draw do
  resources :tws do
    collection do
    post :confirm
    end
  end
end