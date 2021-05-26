class SoundsController < ApplicationController
  def index
    @sounds = Sound.all
  end

  def show
    @sound = Sound.find(params[:id])
  end

  def new
    @sound = Sound.new
  end

  def create
    @sound = Sound.new(sound_params)

    if @sound.save
      redirect_to @sound
    else
      render :new
    end
  end

  def edit
    @sound = Sound.find(params[:id])
  end

  def update
    @sound = Sound.find(params[:id])

    if @sound.update(sound_params)
      redirect_to @sound
    else
      render :edit
    end
  end

  private
  def sound_params
    params.require(:sound).permit(:sound, :sound_type)
  end
end
