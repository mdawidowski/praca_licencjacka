class AukcjesController < ApplicationController
   before_action :set_aukcja, only: [:show, :edit, :update, :destroy, :print]

  def index
    @aukcje = Aukcje.all
    @kategorie = Kategorie.all
  end

  def new
    @aukcje = Aukcje.new
    @kategorie = Kategorie.all
  end

  def show
    @kategorie = Kategorie.all
    @aukcje = Aukcje.find(params[:id])
    respond_to do |format|
      format.html
    end
  end

  def destroy
   @aukcje.destroy
   respond_to do |format|
     format.html { redirect_to aukcjes_url, notice: 'Aukcja została usunięta.' }
     format.json { head :no_content }
   end
 end

  def create
      @aukcje = Aukcje.new(aukcje_params)

      respond_to do |format|
        if @aukcje.save
          format.html { redirect_to @aukcje, notice: 'Aukcja pomyślnie dodana.' }
          format.json { render :show, status: :created, location: @aukcje }
        else
          format.html { render :new }
          format.json { render json: @aukcje.errors, status: :unprocessable_entity }
        end
      end
    end

    def update
    respond_to do |format|
      if @aukcje.update(aukcje_params.except(:user_id))
        format.html { redirect_to @aukcje, notice: 'Edycja zakończyła się sukcesem.' }
        format.json { render :show, status: :ok, location: @aukcje }
      else
        format.html { render :edit }
        format.json { render json: @aukcje.errors, status: :unprocessable_entity }
      end
    end
  end

    def aukcje_params
        params.require(:aukcje).permit(:nazwa, :opis, :data_zakonczenia, :cena_startowa, :cena_minimalna, :cena_aktualna, :koszt_przesylki, :kategorie_id)
      end

      def set_aukcja
      @aukcje = Aukcje.find(params[:id])
    end

end
