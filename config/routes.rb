Rails.application.routes.draw do
  root to: 'tweet#index'
  references :tweets, only: [:new, :create]
end
