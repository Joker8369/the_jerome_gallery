require "test_helper"

class TablesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tables_index_url
    assert_response :success
  end

  test "should get editnew" do
    get tables_editnew_url
    assert_response :success
  end

  test "should get create" do
    get tables_create_url
    assert_response :success
  end

  test "should get show" do
    get tables_show_url
    assert_response :success
  end

  test "should get update" do
    get tables_update_url
    assert_response :success
  end

  test "should get destroy" do
    get tables_destroy_url
    assert_response :success
  end
end
