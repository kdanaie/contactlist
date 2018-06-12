require 'test_helper'

class ThenewsreportersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @thenewsreporter = thenewsreporters(:one)
  end

  test "should get index" do
    get thenewsreporters_url
    assert_response :success
  end

  test "should get new" do
    get new_thenewsreporter_url
    assert_response :success
  end

  test "should create thenewsreporter" do
    assert_difference('Thenewsreporter.count') do
      post thenewsreporters_url, params: { thenewsreporter: {  } }
    end

    assert_redirected_to thenewsreporter_url(Thenewsreporter.last)
  end

  test "should show thenewsreporter" do
    get thenewsreporter_url(@thenewsreporter)
    assert_response :success
  end

  test "should get edit" do
    get edit_thenewsreporter_url(@thenewsreporter)
    assert_response :success
  end

  test "should update thenewsreporter" do
    patch thenewsreporter_url(@thenewsreporter), params: { thenewsreporter: {  } }
    assert_redirected_to thenewsreporter_url(@thenewsreporter)
  end

  test "should destroy thenewsreporter" do
    assert_difference('Thenewsreporter.count', -1) do
      delete thenewsreporter_url(@thenewsreporter)
    end

    assert_redirected_to thenewsreporters_url
  end
end
