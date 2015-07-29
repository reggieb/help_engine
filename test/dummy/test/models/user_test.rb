require_relative '../../../test_helper'

class UserTest < ActiveSupport::TestCase
  def test_helper_pages
    user.help_pages << help_page
    assert_equal [help_page], user.help_pages
  end

end
