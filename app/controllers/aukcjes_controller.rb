class AukcjesController < ApplicationController
  def index
    @aukcje = Aukcje.all
  end

  def pokaz
  end

  def nowa
  end

  def edycja
  end

  def usun
  end
end
