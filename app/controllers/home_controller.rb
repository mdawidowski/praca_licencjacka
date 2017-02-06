class HomeController < ApplicationController

  def index
    @kategorie = Kategorie.all
  end

  def panel_administratora
  end

end
