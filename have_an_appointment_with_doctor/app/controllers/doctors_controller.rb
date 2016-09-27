class DoctorsController < ApplicationController
  def index
    @doctor = Doctor.all
  end

  def new

  end

  def create
    @doctor = Doctor.new(doctor_params)
    @doctor.save

    #下面的是到show页面，stackoverflow上说，这是最符合逻辑的指向
    redirect_to @doctor
  end

  def show
    @doctor = Doctor.find(params[:id])
  end

  private
    def doctor_params
      params.require(:doctor).permit(:title,:text)
    end
end
