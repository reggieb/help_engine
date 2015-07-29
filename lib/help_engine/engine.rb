module HelpEngine
  class Engine < ::Rails::Engine
    require 'jquery-rails'
    isolate_namespace HelpEngine
  end
end
