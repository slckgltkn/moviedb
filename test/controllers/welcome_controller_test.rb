require 'test_helper'

class WelcomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get welcome_index_url
    assert_response :success
  end

  test "should get yerli" do
    get welcome_yerli_url
    assert_response :success
  end

  test "should get yabanci" do
    get welcome_yabanci_url
    assert_response :success
  end

  test "should get yonetmenler" do
    get welcome_yonetmenler_url
    assert_response :success
  end

  test "should get iletisim" do
    get welcome_iletisim_url
    assert_response :success
  end

end
