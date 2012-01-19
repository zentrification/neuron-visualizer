require 'test_helper'

class PostsynapticTerminalsControllerTest < ActionController::TestCase
  setup do
    @postsynaptic_terminal = postsynaptic_terminals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:postsynaptic_terminals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create postsynaptic_terminal" do
    assert_difference('PostsynapticTerminal.count') do
      post :create, postsynaptic_terminal: @postsynaptic_terminal.attributes
    end

    assert_redirected_to postsynaptic_terminal_path(assigns(:postsynaptic_terminal))
  end

  test "should show postsynaptic_terminal" do
    get :show, id: @postsynaptic_terminal.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @postsynaptic_terminal.to_param
    assert_response :success
  end

  test "should update postsynaptic_terminal" do
    put :update, id: @postsynaptic_terminal.to_param, postsynaptic_terminal: @postsynaptic_terminal.attributes
    assert_redirected_to postsynaptic_terminal_path(assigns(:postsynaptic_terminal))
  end

  test "should destroy postsynaptic_terminal" do
    assert_difference('PostsynapticTerminal.count', -1) do
      delete :destroy, id: @postsynaptic_terminal.to_param
    end

    assert_redirected_to postsynaptic_terminals_path
  end
end
