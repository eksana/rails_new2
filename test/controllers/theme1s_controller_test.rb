require 'test_helper'

class Theme1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @theme1 = theme1s(:one)
  end

  test "should get index" do
    get theme1s_url
    assert_response :success
  end

  test "should get new" do
    get new_theme1_url
    assert_response :success
  end

  test "should create theme1" do
    assert_difference('Theme1.count') do
      post theme1s_url, params: { theme1: { name: @theme1.name, qty_items: @theme1.qty_items } }
    end

    assert_redirected_to theme1_url(Theme1.last)
  end

  test "should show theme1" do
    get theme1_url(@theme1)
    assert_response :success
  end

  test "should get edit" do
    get edit_theme1_url(@theme1)
    assert_response :success
  end

  test "should update theme1" do
    patch theme1_url(@theme1), params: { theme1: { name: @theme1.name, qty_items: @theme1.qty_items } }
    assert_redirected_to theme1_url(@theme1)
  end

  test "should destroy theme1" do
    assert_difference('Theme1.count', -1) do
      delete theme1_url(@theme1)
    end

    assert_redirected_to theme1s_url
  end
end
