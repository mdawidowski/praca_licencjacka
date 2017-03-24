class SearchesController < ApplicationController

  def new
    @search = Search.new
    @kategorie = Kategorie.all
  end

  def create
    @search = Search.create(search_params)
    redirect_to @search
  end

  def show
      @search = Search.find(params[:id])
  end

  private

  def search_params
      params.require(:search).permit(:klucz, :kategoria, :min_cena, :max_cena)
  end

end
