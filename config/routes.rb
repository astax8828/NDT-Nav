Rails.application.routes.draw do
  namespace :admin_panel do
    resources :articles
  end
  namespace :admin_panel do
    resources :categories
  end
  namespace :admin_panel do
    get '/', to: 'admin_panel#index'
  end

  # devise_for :admins, class_name: "AdminPanel::Admin"
  devise_for :admins, class_name: 'AdminPanel::Admin', controllers: {
      :sessions => "admin_panel/admins/sessions",
      :passwords => "admin_panel/admins/passwords",
      :registrations => "admin_panel/admins/registrations"
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
