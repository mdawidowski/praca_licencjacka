class HomeController < ApplicationController

  def index
    @kategorie = Kategorie.all
    @user = User.all
    @admin = Admin.all
    @aukcje = Aukcje.offset(rand(Aukcje.count)).first
  end

  def panel_administratora
    @kategorie = Kategorie.all
  end

  def panel_uzytkownika
    @kategorie = Kategorie.all
  end

  def uzytkownicy
    @kategorie = Kategorie.all
    @user = User.all
  end

  def administratorzy
    @kategorie = Kategorie.all
    @admin = Admin.all
  end

end
