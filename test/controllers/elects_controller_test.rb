require "test_helper"

class ElectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @elect = elects(:one)
  end

  test "should get index" do
    get elects_url
    assert_response :success
  end

  test "should get new" do
    get new_elect_url
    assert_response :success
  end

  test "should create elect" do
    assert_difference("Elect.count") do
      post elects_url, params: { elect: { facts: @elect.facts, name: @elect.name } }
    end

    assert_redirected_to elect_url(Elect.last)
  end

  test "should show elect" do
    get elect_url(@elect)
    assert_response :success
  end

  test "should get edit" do
    get edit_elect_url(@elect)
    assert_response :success
  end

  test "should update elect" do
    patch elect_url(@elect), params: { elect: { facts: @elect.facts, name: @elect.name } }
    assert_redirected_to elect_url(@elect)
  end

  test "should destroy elect" do
    assert_difference("Elect.count", -1) do
      delete elect_url(@elect)
    end

    assert_redirected_to elects_url
  end
end
