require 'test_helper'

class MicroostsControllerTest < ActionController::TestCase
  setup do
    @microost = microosts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:microosts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create microost" do
    assert_difference('Microost.count') do
      post :create, :microost => @microost.attributes
    end

    assert_redirected_to microost_path(assigns(:microost))
  end

  test "should show microost" do
    get :show, :id => @microost.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @microost.to_param
    assert_response :success
  end

  test "should update microost" do
    put :update, :id => @microost.to_param, :microost => @microost.attributes
    assert_redirected_to microost_path(assigns(:microost))
  end

  test "should destroy microost" do
    assert_difference('Microost.count', -1) do
      delete :destroy, :id => @microost.to_param
    end

    assert_redirected_to microosts_path
  end
end
