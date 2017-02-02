require 'test_helper'

class MircropostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mircropost = mircroposts(:one)
  end

  test "should get index" do
    get mircroposts_url
    assert_response :success
  end

  test "should get new" do
    get new_mircropost_url
    assert_response :success
  end

  test "should create mircropost" do
    assert_difference('Mircropost.count') do
      post mircroposts_url, params: { mircropost: { content: @mircropost.content, user_id: @mircropost.user_id } }
    end

    assert_redirected_to mircropost_url(Mircropost.last)
  end

  test "should show mircropost" do
    get mircropost_url(@mircropost)
    assert_response :success
  end

  test "should get edit" do
    get edit_mircropost_url(@mircropost)
    assert_response :success
  end

  test "should update mircropost" do
    patch mircropost_url(@mircropost), params: { mircropost: { content: @mircropost.content, user_id: @mircropost.user_id } }
    assert_redirected_to mircropost_url(@mircropost)
  end

  test "should destroy mircropost" do
    assert_difference('Mircropost.count', -1) do
      delete mircropost_url(@mircropost)
    end

    assert_redirected_to mircroposts_url
  end
end
