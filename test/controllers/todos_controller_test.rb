require "test_helper"

class TodosControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get todos_home_url
    assert_response :success
  end

  test "should get edit" do
    get todos_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get todos_destroy_url
    assert_response :success
  end
end
