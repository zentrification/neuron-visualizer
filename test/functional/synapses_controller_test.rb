require 'test_helper'

class SynapsesControllerTest < ActionController::TestCase
  setup do
    @synapse = synapses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:synapses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create synapse" do
    assert_difference('Synapse.count') do
      post :create, synapse: @synapse.attributes
    end

    assert_redirected_to synapse_path(assigns(:synapse))
  end

  test "should show synapse" do
    get :show, id: @synapse.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @synapse.to_param
    assert_response :success
  end

  test "should update synapse" do
    put :update, id: @synapse.to_param, synapse: @synapse.attributes
    assert_redirected_to synapse_path(assigns(:synapse))
  end

  test "should destroy synapse" do
    assert_difference('Synapse.count', -1) do
      delete :destroy, id: @synapse.to_param
    end

    assert_redirected_to synapses_path
  end
end
