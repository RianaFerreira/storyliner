class StarshipsService
  def self.call
    # the starships don't change that often so store them in cache
    Rails.cache.fetch("swapir_starships") do
      Swapir.get_all_starships.map{ |ship| ship["name"] }
    end
  end
end
