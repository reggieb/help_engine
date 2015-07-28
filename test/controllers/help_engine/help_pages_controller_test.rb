require 'test_helper'

module HelpEngine
  class HelpPagesControllerTest < ActionController::TestCase
    def setup
      @routes = Engine.routes
    end

    def test_index
      get :index
      assert_response :success
      assert_not_nil assigns(:help_pages)
    end

    def test_new
      get :new
      assert_response :success
    end

    def test_create
      assert_difference('HelpPage.count') do
        post :create, help_page: { content: 'Foo bar', name: 'Foo', slug: 'foo' }
      end

      assert_redirected_to help_page_path(assigns(:help_page))
    end

    def test_show
      get :show, id: help_page
      assert_response :success
    end

    def test_edit
      get :edit, id: help_page
      assert_response :success
    end

    def test_update
      patch :update, id: help_page, help_page: { content: 'Something else' }
      assert_redirected_to help_page_path(assigns(:help_page))
    end

    def test_destroy
      assert_difference('HelpPage.count', -1) do
        delete :destroy, id: help_page
      end

      assert_redirected_to help_pages_path
    end
  end
end
