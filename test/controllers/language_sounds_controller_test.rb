require "test_helper"

class LanguageSoundsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get language_sounds_index_url
    assert_response :success
  end
end
