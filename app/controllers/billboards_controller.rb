class BillboardsController < ApplicationController
  
  before_action :set_billboard, only: [:show, :edit, :update, :destroy]
  before_action :set_song, only: [:show]
  def index
    @billboards = Billboard.all.order(:name)

  end

  def show
    # before_action
  end

  def new
    @billboard = Billboard.new
    render partial: 'form'

  end

  def create
    @billboard = Billboard.new(billboard_params)

    if @billboard.save
      redirect_to billboards_path
    else
      render :new
    end
  end

  def edit
    # before_action
    render partial: 'form'
  end

  def update
    # before_action

    if @billboard.update(billboard_params)
      redirect_to billboards_path
    else
      render :edit
    end
  end

  def destroy
    # before_action
    @billboard.destroy
    redirect_to billboards_path
  end

  private

  def set_billboard
    @billboard = Billboard.find(params[:id])
  end

  def billboard_params
    params.require(:billboard).permit(:name)
  end

    def set_song
    @songs = @billboard.songs.all
  end

end
