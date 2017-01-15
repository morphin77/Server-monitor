require 'test_helper'

class NodesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @node = nodes(:one)
  end

  test "should get index" do
    get nodes_url
    assert_response :success
  end

  test "should get new" do
    get new_node_url
    assert_response :success
  end

  test "should create node" do
    assert_difference('Node.count') do
      post nodes_url, params: { node: { address: @node.address, name: @node.name, password: @node.password, user_id: @node.user_id, username: @node.username } }
    end

    assert_redirected_to node_url(Node.last)
  end

  test "should show node" do
    get node_url(@node)
    assert_response :success
  end

  test "should get edit" do
    get edit_node_url(@node)
    assert_response :success
  end

  test "should update node" do
    patch node_url(@node), params: { node: { address: @node.address, name: @node.name, password: @node.password, user_id: @node.user_id, username: @node.username } }
    assert_redirected_to node_url(@node)
  end

  test "should destroy node" do
    assert_difference('Node.count', -1) do
      delete node_url(@node)
    end

    assert_redirected_to nodes_url
  end
end
