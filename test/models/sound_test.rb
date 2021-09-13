require "test_helper"

class SoundTest < ActiveSupport::TestCase
  test "that sounds can be created" do
    sound = Sound.create(sound: 'a', sound_type: 'vowel')
    assert sound
  end

  test "sounds can be read" do
    sound = Sound.create(sound: 'a', sound_type: 'vowel')
    found_sound = Sound.find_by_sound('a')
    assert_equal sound, found_sound
  end

  test "sound can be updated" do
    sound = Sound.create(sound: 'a', sound_type: 'vowel')
    sound.update(sound_type: 'consontant')
    assert_equal sound.sound_type, 'consontant'
  end

  test "sound can be destoryed" do
    sound = Sound.create(sound: 'a', sound_type: 'vowel')
    count_of_sounds = Sound.count
    assert count_of_sounds >= 1
    sound.destroy
    new_count_of_sounds = Sound.count
    assert new_count_of_sounds < count_of_sounds
    assert_equal new_count_of_sounds, count_of_sounds - 1
  end
end
