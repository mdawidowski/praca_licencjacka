class MojeaukcjeController < ApplicationController
  
  def index
    @mojeaukcje = Mojeaukcje.all
    @aukcjes = Aukcje.all
  end

  def new
    @mojeaukcje = Mojeaukcje.new
  end

  def edit
  end

  def create
    @mojeaukcje = Mojeaukcje.new(mojeaukcje_params)

    respond_to do |format|
      if @mojeaukcje.save
        format.html { redirect_to Mojeaukcje, notice: 'Dodano pomyślnie' }
        format.json { render :show, status: :created, location: @mojeaukcje }
      else
        format.html { render :new }
        format.json { render json: Mojeaukcje.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def mojeaukcje_params
    params.require(:mojeaukcje).permit(:aukcje_id)
  end
end
