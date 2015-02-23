class MusicsController < ApplicationController

  def index
    @musics = Music.all
  end

  def thelist
    @musics = Music.all
  end   ##I added this as my root path, so when you load the browser,
        ##it simply displays the information without all the links
        ##that are present in "index.html.erb" view.  The "Playlist options"
        ##link in the browser links to the "index.html.erb" file, and is
        ##the only link on that page...which is now the root path. localhost:3000/

  def new
    @music = Music.new
  end

  def create
    @music = Music.new(music_params)
    if
      @music.save
      flash[:created] = "Song Was Successfully Added"
      ##This is the flash message for creating a new song, that is displayed at
      ##the top of the index page after you hit submit while creating a new song.
      ##This is 1 of 2 files needed to make this happen, the other is in the
      ##"application.html.erb" file.  ":created" is a variable set by me, and could
      ##be anything you choose it to be.  The message after "=" is the
      ##message that is displayed at the top of the index page after creating a new song.
      ##it (line 31) redirects to the index page
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
    ##This is the flash message for deleting a song, that is displayed at
    ##the top of the index page after you remove a song from any of the other pages.
    ##This is 1 of 2 files needed to make this happen, the other is in the
    ##"application.html.erb" file.  ":deleted" is a variable set by me, and could
    ##be anything you choose it to be.  The message after "=" is the
    ##message that is displayed at the top of the index page after deleting or removing a song.
    ##it (line 67) redirects to the index page
    redirect_to musics_path
  end


  private


  def music_params
    params.require(:music).permit(:song, :artist)
  end




end
