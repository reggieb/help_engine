require 'test_helper'

module HelpEngine
  class HelpPageTest < ActiveSupport::TestCase
    def test_content_from_multiline_yaml
      assert_match /infinite/, help_page.content
    end

    def test_to_html
      assert_match /infinite/, help_page.to_html
      assert_match /\<h1\>.+\<\/h1\>/, help_page.to_html
    end

    def test_author
      help_page.update_attribute(:author, user)
      assert_equal help_page.author_id, user.id
      assert_equal help_page.author_type, user.class.to_s
    end

  end
end
