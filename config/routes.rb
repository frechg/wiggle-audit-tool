WiggleAuditTool::Application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root 'bike_routes#index'

  resources :bike_routes, only: [:index, :show] do
    resources :route_segments, only: [:index, :show, :edit, :update]
  end

    resources :questions, only: [:index, :show]
end
