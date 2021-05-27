require 'active_model'
require_relative '../../lib/validators/language_validator.rb'
require_relative '../../lib/validators/phoneme_validator.rb'

class Language < ApplicationRecord
    include ActiveModel::Validations
    #has_and_belongs_to_many :language_sounds
    has_many :language_sounds
    has_many :sounds, :through => :language_sounds

    has_many :phonemes

    validates_with LanguageValidator
    validates :language_name, presence: true
    validates :homophone_percent, presence: true, numericality: true
    # validates_associated :phonemes
    # validates_with PhonemeValidator

    def sound
        LanguageSound.where(language_id: id)
    end
end