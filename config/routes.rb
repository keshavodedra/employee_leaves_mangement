Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # resources :employees, only: [:index]

  get '/' => 'employees#index'
  get 'ics_export.ics' => 'employees#ics_export'
end
