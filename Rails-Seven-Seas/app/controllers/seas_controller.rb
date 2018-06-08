class SeasController < ApplicationController
  #define your controller actions here
  def index
    @seas = Sea.all
  end

  def new
    @sea = Sea.new
  end

  def create
    @sea = Sea.create(sea_params)
    redirect_to @sea
  end

  def show
    @sea = Sea.find_by(id: params[:id])
  end

  def edit
    @sea = Sea.find_by(id: params[:id])
  end

  def update
    @sea = Sea.find_by(id: params[:id])
    @sea.update(sea_params)
    redirect_to @sea
  end

  def put
  end

  def destroy
    Sea.find_by(id: params[:id]).destroy
    redirect_to "/seas"
  end

  private
  # In controller actions, use this private method to access sea params from forms.
  # Example: @sea.update(sea_params)
  # check the return value of sea_params to see what you're working with!
  def sea_params
    params.require(:sea).permit(:name, :temperature, :bio, :mood, :image_url, :favorite_color, :scariest_creature, :has_mermaids)
  end

end
