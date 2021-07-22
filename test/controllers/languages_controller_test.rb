require "test_helper"

class LanguagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get root_url
    assert_response :success
  end

  test "should show languages" do
    language = languages(:one)
    get language_url(language)
    assert_response :success
  end

  test "should destroy language" do
    language = languages(:one)
    assert_difference("Language.count", -1) do
      delete language_url(language)
    end

    assert_redirected_to root_path
  end

  test "should update language" do
    language = languages(:one)
    language.update(:language_name => "updated")
    assert_equal "updated", language.language_name
  end
end
