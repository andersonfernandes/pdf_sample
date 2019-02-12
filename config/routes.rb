Rails.application.routes.draw do
  root 'home#index'

  get 'pdf' => 'home#pdf'
end
