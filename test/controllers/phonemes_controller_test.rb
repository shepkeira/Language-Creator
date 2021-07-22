require "test_helper"

class PhonemesControllerTest < ActionDispatch::IntegrationTest
  test "should destroy phoneme" do
    phoneme = phonemes(:one)
    assert_difference("Phoneme.count", -1) do
      phoneme.destroy
    end
  end

  test "should update phoneme" do
    phoneme = phonemes(:one)

    phoneme.update(:english_word => "updated")

    assert_equal "updated", phoneme.english_word
  end
end
