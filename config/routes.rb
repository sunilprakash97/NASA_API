Rails.application.routes.draw do
  get 'nasa/index'
  get 'nasa/about'
  root 'nasa#index'
end
