class MusicsController < ApplicationController

  def index
    @musics = Music.all
  end

  def thelist
    @musics = Music.all
  end

  def new
    @music = Music.new
  end

  def create
    @music = Music.new(music_params)
    if
      @music.save
      flash[:created] = "Song Was Successfully Added"
      redirect_to musics_path
    else
      render :new
    end
  end


  def show
    @music = Music.find(params[:id])
  end

  def edit
    @music = Music.find(params[:id])
  end

  def update
    @music = Music.find(params[:id])
    if
      @music.update(music_params)
      redirect_to musics_path
    else
      render :edit
    end
  end


  def destroy
    Music.destroy(params[:id])
    flash[:deleted] = "Song Was Successfully Deleted"
    redirect_to musics_path
  end


  private


  def music_params
    params.require(:music).permit(:song, :artist)
  end




end
