class SpentsController < ApplicationController

  def index 

  end

  def new
    @spent = Spent.new
  end

  def create
    @spent = Spent.new(params.require(:spent).permit(:value, :date, :description))
    @spent.save
    redirect_to @spent
  end

  def show 
    @spent = Spent.find(params[:id])
  end
  
  private

  # Never trust parameters from the scary internet, only allow the white list through.
  def spent_params
    params.require(:spent).permit(:value, :date, :description)
  end
  
end