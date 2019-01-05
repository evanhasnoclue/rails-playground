class Api::V1::SportsController < Api::V1::BaseController
  def index
    @sports = Sport.all
  end

  def show
    @sport = Sport.find(params[:id])
  end

end
