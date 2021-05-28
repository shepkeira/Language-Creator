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

  def edit
    @language = Language.find(params[:language_id])
    @phoneme = @language.phonemes.find(params[:id])
  end

  def update
    @language = Language.find(params[:language_id])
    @phoneme = @language.phonemes.find(params[:id])

    if @phoneme.update(phoneme_params)
      redirect_to @language
    else
      render edit_language_phoneme_path(@language, @phoneme)
    end
  end

  def destroy
    @language = Language.find(params[:language_id])
    @phoneme = @language.phonemes.find(params[:id])
    @phoneme.destroy
    redirect_to language_path(@language)
  end

  private
  def phoneme_params
    params.require(:phoneme).permit(:english_word, :language_word)
  end
end
