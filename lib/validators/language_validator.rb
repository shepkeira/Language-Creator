class LanguageValidator < ActiveModel::Validator
    def validate(language)
        sounds = language.sounds
        error_messages = sound_validation(sounds)
        unless error_messages.nil?
            for msg in error_messages
                language.errors.add :sounds, msg
            end
        end
    end

    private 
    def sound_validation(sounds)
        error_msg = []
        contains_vowel = false
        contains_consonant = false
        sounds.each do |sound|
            if sound.sound_type == 'vowel'
                contains_vowel = true
            else
                contains_consonant = true
            end
        end
        unless contains_vowel
            error_msg << "The language must have at least one vowel"
        end
        unless contains_consonant
            error_msg << "The language must have at least one consonant"
        end
        error_msg
    end
end