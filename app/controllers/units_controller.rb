class UnitsController < ApplicationController

  def index
    @units = Unit.all
    @unit = Unit.new
  end

  def new
    @unit = Unit.new
  end

  def create
    @unit = Unit.new(unit_params)
     if @unit.save
       redirect_to units_path
     else
       render :index
     end
  end

  def show
    @unit = Unit.find(params[:id])
  end

  def edit
    # @subject = Subject.new
    @unit = Unit.find(params[:id])
  end

  def update
    @unit = Unit.find(params[:id])
    if @unit.update(params[:unit])
      redirect_to units_path
    else
      render :edit
    end
  end

  def destroy
    @unit = Unit.find(params[:id])
    @unit.destroy
    redirect_to units_path
  end

private
  def unit_params
    params.require(:unit).permit(:title)
  end

end
