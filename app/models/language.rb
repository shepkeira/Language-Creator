require 'json'

class Language < ApplicationRecord
    has_one :language_sound
    has_many :phoneme
    has_and_belongs_to_many :sounds

    validates :language_name, presence: true
    validates :homonyme_percent, presence: true, numericality: true

    before_save do
        require 'pry-byebug';binding.pry
        sounds = self.vowel_sounds.split(", ").map {|x| x[/\d+/]}
        sounds = sounds.filter_map { |i| i.to_i if !i.nil? } 
        self.vowel_sounds = sounds
        # self.vowel_sounds.gsub!(/[\[\]\"]/, "") if attribute_present?("vowel_sounds")
    end

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
