class Language < ApplicationRecord
    has_and_belongs_to_many :language_sounds
    has_many :phonemes

    validates :language_name, presence: true
    validates :homophone_percent, presence: true, numericality: true
    
    def show_sounds
        require 'pry-byebug';binding.pry
        sounds_array = []
        sound_ids = JSON.parse(self.vowel_sounds)
        sound_ids.each do |sound_id|
            sounds_array << Sound.find(sound_id).sound
        end
        sounds_array.join(",")
    end
end
