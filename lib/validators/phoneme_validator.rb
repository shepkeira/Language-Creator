class PhonemeValidator < ActiveModel::Validator
    def validate(phoneme)
        sounds = phoneme.language.sounds
        word = phoneme.language_word
        if sounds_validation(sounds, word)
            phoneme.errors.add :base, "Word, #{word}, must contain only sounds from language"
        end
    end

    private 
    def sounds_validation(sounds, word)
        sounds_array = []
        sounds.each do |sound|
            sounds_array << sound.sound
        end

        word.each_char do |char|
            if sounds_array.include? char
                return false
            end
        end
        true
    end
end