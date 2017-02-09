class HomeController < ApplicationController

  def index
    @kategorie = Kategorie.all
  end

  def panel_administratora
  end

  def panel_uzytkownika
  end
end
