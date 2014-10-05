require 'test_helper'

class SimpleArticlesControllerTest < ActionController::TestCase
  setup do
    @simple_article = simple_articles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:simple_articles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create simple_article" do
    assert_difference('SimpleArticle.count') do
      post :create, simple_article: { full_description: @simple_article.full_description, name: @simple_article.name, published: @simple_article.published, short_description: @simple_article.short_description }
    end

    assert_redirected_to simple_article_path(assigns(:simple_article))
  end

  test "should show simple_article" do
    get :show, id: @simple_article
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @simple_article
    assert_response :success
  end

  test "should update simple_article" do
    patch :update, id: @simple_article, simple_article: { full_description: @simple_article.full_description, name: @simple_article.name, published: @simple_article.published, short_description: @simple_article.short_description }
    assert_redirected_to simple_article_path(assigns(:simple_article))
  end

  test "should destroy simple_article" do
    assert_difference('SimpleArticle.count', -1) do
      delete :destroy, id: @simple_article
    end

    assert_redirected_to simple_articles_path
  end
end
