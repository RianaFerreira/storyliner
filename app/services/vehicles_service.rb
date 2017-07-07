class VehiclesService
  def self.call
    # the vehicles don't change that often so store them in cache
    Rails.cache.fetch("swapir_vehicles") do
      Swapir.get_all_vehicles.map{ |vehicle| vehicle["name"] }
    end
  end
end
