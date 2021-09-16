require "test_helper"

class LanguageTest < ActiveSupport::TestCase
  test "that languages can be created" do
    language = Language.create(language_name: "test", homophone_percent: 1, id: 1)
    assert language
  end

  test "languages can be read" do
    language = Language.create(language_name: "test", homophone_percent: 1, id: 1)
    found_language = Language.find(language.id)
    assert_equal language, found_language
  end

  test "language can be updated" do
    language = Language.create(language_name: "test", homophone_percent: 1, id: 1)
    language.update(language_name: 'consontant')
    assert_equal language.language_name, 'consontant'
  end

  test "language can be destoryed" do
    language = Language.create(language_name: "test", homophone_percent: 1)

    count_of_languages = Language.count
    assert count_of_languages >= 1
    language_to_delete = Language.find(1)
    language_to_delete.destroy
    new_count_of_languages = Language.count

    assert new_count_of_languages < count_of_languages
    assert_equal new_count_of_languages, count_of_languages - 1
  end
end
