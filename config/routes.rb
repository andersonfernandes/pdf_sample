Rails.application.routes.draw do
  root 'pdf#index'

  get 'pdf/generate'
  get 'pdf/report'
end
