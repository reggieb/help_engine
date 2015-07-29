HelpEngine::Engine.routes.draw do

  root 'help_pages#index'

  resources :help_pages, path: 'pages'
end
