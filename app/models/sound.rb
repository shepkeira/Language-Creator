class Sound < ApplicationRecord
    has_and_belongs_to_many :language_sounds
end
