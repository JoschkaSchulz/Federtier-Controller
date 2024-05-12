Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  resources :characters do
    get "move_head" => "characters#move_head"
  end
end
