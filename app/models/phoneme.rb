require 'active_model'
require_relative '../../lib/validators/phoneme_validator.rb'

class Phoneme < ApplicationRecord
    include ActiveModel::Validations
    belongs_to :language, inverse_of: :phonemes

    validates :english_word, presence: true, uniqueness: true
    validates :language_word, presence: true
    validates_with PhonemeValidator
end
