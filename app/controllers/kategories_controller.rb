class KategoriesController < ApplicationController
  before_action :set_kategoria, only: [:show, :edit, :update, :destroy, :print]

 def index
   @kategorie = Kategorie.all
 end

 def new
   @kategorie = Kategorie.new
 end

 def show
   @aukcje = Aukcje.all
   @kategorie = Kategorie.find(params[:id])
   respond_to do |format|
     format.html
   end
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

   def update
   respond_to do |format|
     if @kategorie.update(kategorie_params.except(:user_id))
       format.html { redirect_to @kategorie, notice: 'Edycja zakończyła się sukcesem.' }
       format.json { render :show, status: :ok, location: @kategorie }
     else
       format.html { render :edit }
       format.json { render json: @kategorie.errors, status: :unprocessable_entity }
     end
   end
 end

   def kategorie_params
       params.require(:kategorie).permit(:nazwa_kategorii, :parent_id)
     end

     def set_kategoria
     @kategorie = Kategorie.find(params[:id])
   end

end
