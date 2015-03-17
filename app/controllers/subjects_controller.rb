class SubjectsController < ApplicationController

  def new
    @unit = Unit.find(params[:unit_id])
    @subject = @unit.subjects.new
  end

  # def edit
  #   @subject = Subject.find(params[:id])
  #   @unit = @subject.unit
  # end

  def create
    @unit = Unit.find(params[:unit_id])
    @subject = @unit.subjects.new(subject_params)
    if @subject.save
      redirect_to units_path(@subject.unit)
    else
      render :new
    end
  end

  def update
    @unit = Unit.find(params[:unit_id])
    @subject = Subject.find(params[:id])
    if @subject.update(params[:subject])
      redirect_to unit_path(@subject.unit)
    else
      render :edit
    end
  end

  def edit
    @subject = Subject.find(params[:id])
    @unit = @subject.unit
  end

  private
  def subject_params
    params.require(:subject).permit(:title)
  end
end
