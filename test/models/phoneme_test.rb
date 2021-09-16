require "test_helper"

class PhonemeTest < ActiveSupport::TestCase
  test "that phonemes can be created" do
    language = Language.create(language_name: "test", homophone_percent: 1, id: 1)
    sound = Sound.create(sound: 'v', sound_type: 'vowel', id: 1)
    sounds = LanguageSound.create(language_id: language.id, sound_id: sound.id, id: 1)
    phoneme = Phoneme.create(english_word: 'hello', language_word: 'v', language_id: language.id)
    assert phoneme
  end

  test "phonemes can be read" do
    language = Language.create(language_name: "test", homophone_percent: 1, id: 1)
    sound = Sound.create(sound: 'v', sound_type: 'vowel', id: 1)
    sounds = LanguageSound.create(language_id: language.id, sound_id: sound.id, id: 1)
    phoneme = Phoneme.create(english_word: 'hello', language_word: 'v', language_id: language.id)
    found_phoneme = Phoneme.find_by_english_word('hello')
    assert_equal phoneme, found_phoneme
  end

  test "phoneme can be updated" do
    language = Language.create(language_name: "test", homophone_percent: 1, id: 1)
    sound = Sound.create(sound: 'v', sound_type: 'vowel', id: 1)
    sounds = LanguageSound.create(language_id: language.id, sound_id: sound.id, id: 1)
    phoneme = Phoneme.create(english_word: 'hello', language_word: 'v', language_id: language.id)
    phoneme.update(english_word: 'consontant')
    assert_equal phoneme.english_word, 'consontant'
  end

  test "phoneme can be destoryed" do
    language = Language.create(language_name: "test", homophone_percent: 1, id: 1)
    sound = Sound.create(sound: 'v', sound_type: 'vowel', id: 1)
    sounds = LanguageSound.create(language_id: language.id, sound_id: sound.id, id: 1)
    phoneme = Phoneme.create(english_word: 'hello', language_word: 'v', language_id: language.id)
    count_of_phonemes = Phoneme.count
    assert count_of_phonemes >= 1
    phoneme.destroy
    new_count_of_phonemes = Phoneme.count
    assert new_count_of_phonemes < count_of_phonemes
    assert_equal new_count_of_phonemes, count_of_phonemes - 1
  end
end
