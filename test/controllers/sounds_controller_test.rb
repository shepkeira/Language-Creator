require "test_helper"

class SoundsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get sounds_url
    assert_response :success
  end

  test "should show sound" do
    sound = sounds(:one)
    get sound_url(sound)
    assert_response :success
  end

  test "should update sound" do
    sound = sounds(:one)
    sound.update(:sound_type => "updated")
    assert_equal "updated", sound.sound_type
  end
end
