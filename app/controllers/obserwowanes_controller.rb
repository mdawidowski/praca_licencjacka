class ObserwowanesController < ApplicationController
  before_action :set_obserwowane, only: [:edit, :update, :destroy]

  def index
    @obserwowane = Obserwowane.all
  end

  def new
    @obserwowane = Obserwowane.new
  end

  def create
      @obserwowane = Obserwowane.new(obserwowane_params)

      respond_to do |format|
        if @obserwowane.save
          format.html { redirect_to obserwowanes_url, notice: 'Dodano do obserwowanych' }
          format.json { render :index, status: :created, location: @obserwowane }
        else
          format.html { render :new }
          format.json { render json: @obserwowane.errors, status: :unprocessable_entity }
        end
      end
    end


  def destroy
   @obserwowane.destroy
   respond_to do |format|
     format.html { redirect_to @obserwowane, notice: 'Usunięto z obserwowanych.' }
     format.json { head :no_content }
   end
 end

 def update
 respond_to do |format|
   if @obserwowane.update(obserwowane_params.except(:userid))
     format.html { redirect_to @obserwowane, notice: 'Edycja zakończyła się sukcesem.' }
     format.json { render :index, status: :ok, location: @obserwowane }
   else
     format.html { render :edit }
     format.json { render json: @obserwowane.errors, status: :unprocessable_entity }
   end
 end
end

  def obserwowane_params
      params.require(:obserwowane).permit(:aukcje_id, :userid)
    end

  def set_obserwowane
    @obserwowane = Obserwowane.find(params[:id])
  end
end
