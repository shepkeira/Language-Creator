class Language < ApplicationRecord
    has_and_belongs_to_many :language_sounds
    has_many :phonemes

    validates :language_name, presence: true
    validates :homophone_percent, presence: true, numericality: true

end
