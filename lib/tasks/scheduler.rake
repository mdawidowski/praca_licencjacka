task :every_day => :environment do
  nieaktywna_aukcja = Aukcje.where(ended: false).where('created_at > ?', 14.days.ago)
  nieaktywna_aukcja.update_all(ended: true)
end
