require 'test_helper'

class PollboothsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pollbooth = pollbooths(:one)
  end

  test "should get index" do
    get pollbooths_url
    assert_response :success
  end

  test "should get new" do
    get new_pollbooth_url
    assert_response :success
  end

  test "should create pollbooth" do
    assert_difference('Pollbooth.count') do
      post pollbooths_url, params: { pollbooth: { answer: @pollbooth.answer, email: @pollbooth.email } }
    end

    assert_redirected_to pollbooth_url(Pollbooth.last)
  end

  test "should show pollbooth" do
    get pollbooth_url(@pollbooth)
    assert_response :success
  end

  test "should get edit" do
    get edit_pollbooth_url(@pollbooth)
    assert_response :success
  end

  test "should update pollbooth" do
    patch pollbooth_url(@pollbooth), params: { pollbooth: { answer: @pollbooth.answer, email: @pollbooth.email } }
    assert_redirected_to pollbooth_url(@pollbooth)
  end

  test "should destroy pollbooth" do
    assert_difference('Pollbooth.count', -1) do
      delete pollbooth_url(@pollbooth)
    end

    assert_redirected_to pollbooths_url
  end
end
