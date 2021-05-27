class PhonemesController < ApplicationController
  def create
    @language = Language.find(params[:language_id])
    @phoneme = @language.phonemes.create(phoneme_params)
    @phoneme.errors.full_messages.each{|msg| @language.errors[:base] << msg}
    
    if @phoneme.save
      redirect_to language_path(@language)
    else
      render "languages/show"
    end
    
    # redirect_to language_path(@language)
  end

  private
  def phoneme_params
    params.require(:phoneme).permit(:english_word, :language_word)
  end
end
