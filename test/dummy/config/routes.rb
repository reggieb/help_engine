Rails.application.routes.draw do

  mount HelpEngine::Engine => "/help_engine"
end
