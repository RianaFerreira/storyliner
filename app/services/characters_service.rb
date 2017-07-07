class CharactersService
  def self.call
    # the characters don't change that often so store them in cache
    Rails.cache.fetch("swapir_people") do
      Swapir.get_all_people.map{ |person| person["name"] }
    end
  end
end
