require 'test_helper'

class RatsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get rats_new_url
    assert_response :success
  end

  test "should get index" do
    get rats_index_url
    assert_response :success
  end

  test "should get edit" do
    get rats_edit_url
    assert_response :success
  end

  test "should get show" do
    get rats_show_url
    assert_response :success
  end

end
