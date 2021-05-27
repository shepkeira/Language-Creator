require "test_helper"

class PhonemesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get phonemes_index_url
    assert_response :success
  end
end
