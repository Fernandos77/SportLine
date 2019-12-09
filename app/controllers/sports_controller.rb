class SportsController < ApplicationController
  before_action :set_sport, only: [:edit, :update, :destroy]
  def index
    @sports = Sport.all
  end

  def new
    @sport = Sport.new
  end

  def create
    @sport = Place.new(place_params)
    @sport.user = current_user

    if @sport.save
      redirect_to sports_path(@sport)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @sport.update(sport_params)
      redirect_to user_path(current_user)
    else
      render :edit # print edit.html.erb
    end
  end

  def destroy
    @sport.destroy
    redirect_to sports_path
  end

  private

  def set_sport
    @sport = Sport.find(params[:id])
  end

  def place_params
    params.require(:sport).permit(:type)
  end
end
