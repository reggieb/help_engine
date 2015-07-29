require 'github/markdown'
require 'friendly_id'
module HelpEngine
  class HelpPage < ActiveRecord::Base

    extend FriendlyId
    friendly_id :name, use: :slugged

    belongs_to :author, polymorphic: true

    validates :name, :content, presence: true

    def to_html
      markdown.render content
    end

    def self.markdown_parser
      @markdown_parser ||= GitHub::Markdown
    end

    def markdown
      self.class.markdown_parser
    end

  end
end
