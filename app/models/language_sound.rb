class LanguageSound < ApplicationRecord
    has_and_belongs_to_many :sounds
    has_and_belongs_to_many :languages
end
