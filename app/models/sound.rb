class Sound < ApplicationRecord
    #has_and_belongs_to_many :language_sounds
    has_many :language_sounds
    has_many :languages, :through => :language_sounds

    validates :sound, presence: true
    validates :sound_type, presence: true, acceptance: { accept: ['vowel', 'consonant'], message: "must be either \'vowel\' or \'consonant\'" }
end
