WiggleAuditTool::Application.routes.draw do
  root 'bike_routes#index'

  resources :bike_routes, only: [:index] do
    resources :route_segments, only: [:index, :show, :update]
  end
end
