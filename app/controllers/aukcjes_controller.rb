class AukcjesController < ApplicationController
  def index
    @aukcje = Aukcje.all
  end

  def pokaz
    @aukcje = Aukcje.find(params[:id])
  end

  def new
    @aukcje = Aukcje.new
  end

  def show
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

    def aukcje_params
        params.require(:aukcje).permit(:nazwa, :opis, :data_zakonczenia, :cena_startowa, :cena_minimalna, :koszt_przesylki)
      end
end
