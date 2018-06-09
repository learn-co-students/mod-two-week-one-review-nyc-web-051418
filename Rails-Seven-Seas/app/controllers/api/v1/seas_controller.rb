class Api::V1::SeasController < ApiController
  def index
    @seas = Sea.all
    render json: @seas
  end
end
