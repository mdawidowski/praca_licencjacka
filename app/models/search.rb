class Search < ApplicationRecord
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks

  def search_aukcjes

    aukcjes = Aukcje.all

    aukcjes = aukcjes.where(["nazwa LIKE ?", "%#{klucz}%"]) if klucz.present?
    aukcjes = aukcjes.where(["cena_minimalna >= ?", "%#{min_cena}%"]) if min_cena.present?
    aukcjes = aukcjes.where(["cena_aktualna <= ?", "%#{max_cena}%"]) if max_cena.present?

    return aukcjes

  end
end
