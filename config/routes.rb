Rails.application.routes.draw do
  root 'affidavits#new'
  resources :affidavits
end
