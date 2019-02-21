require 'test_helper'

class ShoesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get shoes_index_url
    assert_response :success
  end

  test "should get shoe" do
    get shoes_shoe_url
    assert_response :success
  end

  test "should get new" do
    get shoes_new_url
    assert_response :success
  end

  test "should get edit" do
    get shoes_edit_url
    assert_response :success
  end

end
