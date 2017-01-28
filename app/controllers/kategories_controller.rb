class KategoriesController < ApplicationController
  before_action :set_kategoria, only: [:show, :edit, :update, :destroy, :print]

 def index
   @kategorie = Kategorie.all
 end

 def new
   @kategorie = Kategorie.new
 end

 def show
 end

 def destroy
  @kategorie.destroy
  respond_to do |format|
    format.html { redirect_to kategories_url, notice: 'Kategoria została usunięta.' }
    format.json { head :no_content }
  end
end

 def create
     @kategorie = Kategorie.new(kategorie_params)

     respond_to do |format|
       if @kategorie.save
         format.html { redirect_to @kategorie, notice: 'Kategoria pomyślnie dodana.' }
         format.json { render :show, status: :created, location: @kategorie }
       else
         format.html { render :new }
         format.json { render json: @kategorie.errors, status: :unprocessable_entity }
       end
     end
   end

   def kategorie_params
       params.require(:kategorie).permit(:nazwa, :opis, :data_zakonczenia, :cena_startowa, :cena_minimalna, :koszt_przesylki)
     end

     def set_kategoria
     @kategorie = Kategorie.find(params[:id])
   end

end
