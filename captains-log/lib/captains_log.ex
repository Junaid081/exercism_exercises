defmodule CaptainsLog do
  @planetary_classes ["D", "H", "J", "K", "L", "M", "N", "R", "T", "Y"]

  def random_planet_class() do
    Enum.random(@planetary_classes)
  end

  def random_ship_registry_number() do
    value =  Enum.random(1000..9999)
    "NCC-#{value}"
  end

  def random_stardate() do
    start  = 41000.0
    :rand.uniform() * (42000.0 - start) + start
  end 

  def format_stardate(stardate) do
   List.to_string(:io_lib.format("~*.*f", [7, 1, stardate]))
  end
end
