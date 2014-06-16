WiggleAuditTool::Application.routes.draw do
  root 'bike_routes#index'

  # get '/list', to: 'pages#list', as: 'list'
  # get '/audit', to: 'pages#audit', as: 'audit'

  resources :bike_routes, only: [:index] do
    resources :route_segments, only: [:index, :show, :update]
  end

  # link_to("View segments", [@bike_route, :route_segments])
  # bike_routes/1/route_segments
end
