WiggleAuditTool::Application.routes.draw do
  root 'pages#home'

  get '/list', to: 'pages#list', as: 'list'
end
