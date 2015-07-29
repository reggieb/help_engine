class User < ActiveRecord::Base

  has_many :help_pages, as: :author, class_name: 'HelpEngine::HelpPage'

end
