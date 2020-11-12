class DosesController < ApplicationController

  def new
    @doses = Dose.new
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def create
    dose = Dose.new(dose_params)
    cocktail = Cocktail.find(params[:cocktail_id])
    dose.cocktail = cocktail
    if
    dose.save
    redirect_to cocktails_path
    else
      render :new
    end
  end

  private

  def dose_params
    params.require(:dose).permit(:description, :ingredients)
  end
end
