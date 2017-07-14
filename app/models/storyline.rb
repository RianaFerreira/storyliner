class Storyline < ApplicationRecord
  enum plot: {
    "Overcoming the Monster" => 0,
    "Rags to Riches" => 1,
    "The Quest" => 2,
    "Voyage and Return" => 3,
    "Comedy" => 4,
    "Tragedy" => 5,
    "Rebirth" => 6
  }

  validates :title, :hero, :location, :plot, presence: true
end
