class SearchesController < ApplicationController

  def new
    @search = Search.new
    @kategorie = Kategorie.all
    @aukcje = Aukcje.search((params[:q].present? ? params[:q] : '*')).records
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
      params.require(:search).permit(:q)
  end

  def search
  if params[:q].nil?
    @aukcje = []
  else
    @aukcje = Aukcje.search params[:q]
  end
end

end
