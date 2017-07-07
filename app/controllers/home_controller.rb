class HomeController < ApplicationController
  # the films don't change that often so store them in cache
  caches_action :show

  def show
    @films = Swapir.get_all_films
  end
end
