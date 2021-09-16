class PhonemesController < ApplicationController
  before_action :get_langauge
  before_action :set_phoneme, only: [:show, :edit, :update, :destroy]

  def index
    @phonemes = @language.phonemes
  end

  def show
  end

  def new
    @phoneme = @language.phonemes.build
  end

  def create
    @phoneme = @language.phonemes.build(phoneme_params)
    
    respond_to do |format|
      if @phoneme.save
        format.html { redirect_to language_path(id: @language.id), notice: "Word was successfully created."}
        format.json { render :show, status: :created, location: @language }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @phoneme.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    @language = Language.find(params[:language_id])
    @phoneme = @language.phonemes.find(params[:id])
  end

  def update
    respond_to do |format|
      if @phoneme.update(phoneme_params)
        format.html { redirect_to language_phoneme_path(id: @phoneme, language_id: @language.id), notice: "Word was successfully updated." }
        format.json { render :show, status: :ok, location: @phoneme }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @phoneme.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @phoneme.destroy
    respond_to do |format|
      format.html { redirect_to language_path(id: @language.id), notice: "Word was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
  def phoneme_params
    params.require(:phoneme).permit(:english_word, :language_word, :language_id)
  end

  def get_langauge
    @language = Language.find(params[:language_id])
  end

  def set_phoneme
    @phoneme = @language.phonemes.find(params[:id])
  end
end
