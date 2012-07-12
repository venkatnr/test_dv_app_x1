require 'test_helper'

class UserstsControllerTest < ActionController::TestCase
  setup do
    @userst = usersts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:usersts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create userst" do
    assert_difference('Userst.count') do
      post :create, :userst => { :customer => @userst.customer, :description => @userst.description, :disposition => @userst.disposition, :estimated_hours => @userst.estimated_hours, :name => @userst.name, :order => @userst.order, :priority => @userst.priority, :status => @userst.status, :tracker => @userst.tracker }
    end

    assert_redirected_to userst_path(assigns(:userst))
  end

  test "should show userst" do
    get :show, :id => @userst
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @userst
    assert_response :success
  end

  test "should update userst" do
    put :update, :id => @userst, :userst => { :customer => @userst.customer, :description => @userst.description, :disposition => @userst.disposition, :estimated_hours => @userst.estimated_hours, :name => @userst.name, :order => @userst.order, :priority => @userst.priority, :status => @userst.status, :tracker => @userst.tracker }
    assert_redirected_to userst_path(assigns(:userst))
  end

  test "should destroy userst" do
    assert_difference('Userst.count', -1) do
      delete :destroy, :id => @userst
    end

    assert_redirected_to usersts_path
  end
end
