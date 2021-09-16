require "test_helper"

class LanguageSoundTest < ActiveSupport::TestCase
  test "that language_sound can be created" do
    language = Language.create(language_name: "test", homophone_percent: 1, id: 1)
    sound = Sound.create(sound: 'v', sound_type: 'vowel', id: 1)
    language_sound = LanguageSound.create(language_id: language.id, sound_id: sound.id, id: 1)
    assert language_sound
  end

  test "language_sound can be read" do
    language = Language.create(language_name: "test", homophone_percent: 1, id: 1)
    sound = Sound.create(sound: 'v', sound_type: 'vowel', id: 1)
    language_sound = LanguageSound.create(language_id: language.id, sound_id: sound.id, id: 1)
    found_language_sound = LanguageSound.find(1)
    assert_equal language_sound, found_language_sound
  end

  test "language_sound can be updated" do
    language = Language.create(language_name: "test", homophone_percent: 1, id: 1)
    language2 = Language.create(language_name: "test2", homophone_percent: 1, id: 2)
    sound = Sound.create(sound: 'v', sound_type: 'vowel', id: 1)
    language_sound = LanguageSound.create(language_id: language.id, sound_id: sound.id, id: 1)
    language_sound.update(language_id: 2)
    assert_equal language_sound.language_id, 2
  end

  test "language_sound can be destoryed" do
    language = Language.create(language_name: "test", homophone_percent: 1, id: 1)
    sound = Sound.create(sound: 'v', sound_type: 'vowel', id: 1)
    language_sound = LanguageSound.create(language_id: language.id, sound_id: sound.id, id: 1)
    count_of_language_sound = LanguageSound.count
    assert count_of_language_sound >= 1
    language_sound.destroy
    new_count_of_language_sound = LanguageSound.count
    assert new_count_of_language_sound < count_of_language_sound
    assert_equal new_count_of_language_sound, count_of_language_sound - 1
  end
end
