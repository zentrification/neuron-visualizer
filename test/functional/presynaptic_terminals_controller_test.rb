require 'test_helper'

class PresynapticTerminalsControllerTest < ActionController::TestCase
  setup do
    @presynaptic_terminal = presynaptic_terminals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:presynaptic_terminals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create presynaptic_terminal" do
    assert_difference('PresynapticTerminal.count') do
      post :create, presynaptic_terminal: @presynaptic_terminal.attributes
    end

    assert_redirected_to presynaptic_terminal_path(assigns(:presynaptic_terminal))
  end

  test "should show presynaptic_terminal" do
    get :show, id: @presynaptic_terminal.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @presynaptic_terminal.to_param
    assert_response :success
  end

  test "should update presynaptic_terminal" do
    put :update, id: @presynaptic_terminal.to_param, presynaptic_terminal: @presynaptic_terminal.attributes
    assert_redirected_to presynaptic_terminal_path(assigns(:presynaptic_terminal))
  end

  test "should destroy presynaptic_terminal" do
    assert_difference('PresynapticTerminal.count', -1) do
      delete :destroy, id: @presynaptic_terminal.to_param
    end

    assert_redirected_to presynaptic_terminals_path
  end
end
