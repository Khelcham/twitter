require 'test_helper'

class MikropostsControllerTest < ActionController::TestCase
  setup do
    @mikropost = mikroposts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mikroposts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mikropost" do
    assert_difference('Mikropost.count') do
      post :create, mikropost: { content: @mikropost.content, user_id: @mikropost.user_id }
    end

    assert_redirected_to mikropost_path(assigns(:mikropost))
  end

  test "should show mikropost" do
    get :show, id: @mikropost
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mikropost
    assert_response :success
  end

  test "should update mikropost" do
    patch :update, id: @mikropost, mikropost: { content: @mikropost.content, user_id: @mikropost.user_id }
    assert_redirected_to mikropost_path(assigns(:mikropost))
  end

  test "should destroy mikropost" do
    assert_difference('Mikropost.count', -1) do
      delete :destroy, id: @mikropost
    end

    assert_redirected_to mikroposts_path
  end
end
