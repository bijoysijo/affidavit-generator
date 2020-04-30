class AffidavitsController < ApplicationController
  def new
    @affidavit = Affidavit.new
  end

  def create
    @affidavit = Affidavit.new(affidavits_params)

    if @affidavit.save
      redirect_to @affidavit
    else
      render :new
    end
  end

  def show
    @affidavit = Affidavit.find(params[:id])
  end

  private

  def affidavits_params
    params.require(:affidavit).permit(:name, :address, :vehicle_no, :accompanying_person, :place, :purpose, :return_date)
  end
end
