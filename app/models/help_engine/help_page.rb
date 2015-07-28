require 'github/markdown'
module HelpEngine
  class HelpPage < ActiveRecord::Base

    validates :name, :content, presence: true

    def to_html
      markdown.render(content)
    end

    def self.markdown_parser
      @markdown_parser ||= GitHub::Markdown
    end

    def markdown
      self.class.markdown_parser
    end

  end
end
