Rails.application.routes.draw do
  resources :gardens do
    resources :plants, only: [:new, :create]
  end

  resources :plants, only: :destroy

  # --- User stories ---
  # As a user I can delete a plant
end
