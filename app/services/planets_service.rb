class PlanetsService
  def self.call
    # the planets don't change that often so store them in cache
    Rails.cache.fetch("swapir_planets") do
      Swapir.get_all_planets.map{ |planet| planet["name"] }
    end
  end
end
