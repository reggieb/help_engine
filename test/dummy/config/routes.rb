Rails.application.routes.draw do

  root 'home#index'

  mount HelpEngine::Engine => "help"
  
end
