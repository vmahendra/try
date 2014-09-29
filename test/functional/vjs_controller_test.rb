require 'test_helper'

class VjsControllerTest < ActionController::TestCase
  setup do
    @vj = vjs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vjs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vj" do
    assert_difference('Vj.count') do
      post :create, vj: { age: @vj.age, name: @vj.name, report: @vj.report }
    end

    assert_redirected_to vj_path(assigns(:vj))
  end

  test "should show vj" do
    get :show, id: @vj
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vj
    assert_response :success
  end

  test "should update vj" do
    put :update, id: @vj, vj: { age: @vj.age, name: @vj.name, report: @vj.report }
    assert_redirected_to vj_path(assigns(:vj))
  end

  test "should destroy vj" do
    assert_difference('Vj.count', -1) do
      delete :destroy, id: @vj
    end

    assert_redirected_to vjs_path
  end
end
