
defmodule KitchenCalculator do
  
  # Task 1
  def get_volume(volume_pair) do
    {x, y} = volume_pair
    y
  end

  # Task 2
  def to_milliliter(volume_pair) when elem(volume_pair, 0) == :cup do
    y= get_volume(volume_pair)
    y = y * 240
    {:milliliter, y}
  end
 def to_milliliter(volume_pair) when elem(volume_pair, 0) == :fluid_ounce do
    y= get_volume(volume_pair)
    y = y * 30
    {:milliliter, y}
  end
 def to_milliliter(volume_pair) when elem(volume_pair, 0) == :teaspoon do
    y= get_volume(volume_pair)
    y = y * 5
    {:milliliter, y}
  end
 def to_milliliter(volume_pair) when elem(volume_pair, 0) == :tablespoon do
    y= get_volume(volume_pair)
    y = y * 15
    {:milliliter, y}
  end
  def to_milliliter(volume_pair) when elem(volume_pair, 0) == :milliliter do
    y= get_volume(volume_pair)
    y = y * 1
    {:milliliter, y}
  end

  # Task 3
  def from_milliliter(volume_pair, unit) when unit == :milliliter do
    y= get_volume(volume_pair)
    y = y * 1
    {:milliliter, y}
  end
 def from_milliliter(volume_pair, unit) when unit == :cup do
    y= get_volume(volume_pair)
    y = y / 240
    {:cup, y}
  end
 def from_milliliter(volume_pair, unit) when unit == :fluid_ounce do
    y= get_volume(volume_pair)
    y = y / 30
    {:fluid_ounce, y}
  end
 def from_milliliter(volume_pair, unit) when unit == :teaspoon do
    y= get_volume(volume_pair)
    y = y / 5
    {:teaspoon, y}
  end
  def from_milliliter(volume_pair, unit) when unit == :tablespoon do
    y= get_volume(volume_pair)
    y = y / 15
    {:tablespoon, y}
  end


  # Task 4

  # For Milliliter
  # All code converted to milliliter
  def convert(volume_pair, unit) when unit == :milliliter do
    to_milliliter(volume_pair)
  end

  # For cup
  # From Milliliter to Cup
  def convert(volume_pair, unit) when unit == :cup and elem(volume_pair, 0) == :milliliter do
    y= get_volume(volume_pair)
    y = y / 240
    {:cup, y}
  end
 # From Fluid_Ounce to Cup
  def convert(volume_pair, unit) when unit == :cup and elem(volume_pair, 0) == :fluid_ounce do
    y= get_volume(volume_pair)
    y = (y / 240) * 30
    {:cup, y}
  end
 # From teaspoon to Cup
  def convert(volume_pair, unit) when unit == :cup and elem(volume_pair, 0) == :teaspoon do
    y= get_volume(volume_pair)
    y = (y / 240) * 5
    {:cup, y}
  end
 # From tablespoon to Cup
  def convert(volume_pair, unit) when unit == :cup and elem(volume_pair, 0) == :tablespoon do
    y= get_volume(volume_pair)
    y = (y / 240) * 15
    {:cup, y}
  end
 # From Cup to Cup
  def convert(volume_pair, unit) when unit == :cup and elem(volume_pair, 0) == :cup do
    y= get_volume(volume_pair)
    {:cup, y}
  end

# For Fluid_Ounce
  # From Milliliter to fluid_ounce
  def convert(volume_pair, unit) when unit == :fluid_ounce and elem(volume_pair, 0) == :milliliter do
    y= get_volume(volume_pair)
    y = y / 30
    {:fluid_ounce, y}
  end
 # From Fluid_Ounce to fluid_ounce
  def convert(volume_pair, unit) when unit == :fluid_ounce and elem(volume_pair, 0) == :fluid_ounce do
    y= get_volume(volume_pair)
    {:fluid_ounce, y}
  end
 # From teaspoon to fluid_ounce
  def convert(volume_pair, unit) when unit == :fluid_ounce and elem(volume_pair, 0) == :teaspoon do
    y= get_volume(volume_pair)
    y = (y * 5) / 30
    {:fluid_ounce, y}
  end
 # From tablespoon to fluid_ounce
  def convert(volume_pair, unit) when unit == :fluid_ounce and elem(volume_pair, 0) == :tablespoon do
    y= get_volume(volume_pair)
    y = (y * 15) / 30
    {:fluid_ounce, y}
  end
 # From Cup to fluid_ounce
  def convert(volume_pair, unit) when unit == :fluid_ounce and elem(volume_pair, 0) == :cup do
    y= get_volume(volume_pair)
    y = (y * 240) / 30
    {:fluid_ounce, y}
  end


# For Teaspoon
  # From Milliliter to teaspoon
  def convert(volume_pair, unit) when unit == :teaspoon and elem(volume_pair, 0) == :milliliter do
    y= get_volume(volume_pair)
    y = y / 5
    {:teaspoon, y}
  end
 # From Fluid_Ounce to teaspoon
  def convert(volume_pair, unit) when unit == :teaspoon and elem(volume_pair, 0) == :fluid_ounce do
    y= get_volume(volume_pair)
    y = (y * 30) / 5
    {:teaspoon, y}
  end
 # From teaspoon to teaspoon
  def convert(volume_pair, unit) when unit == :teaspoon and elem(volume_pair, 0) == :teaspoon do
    y= get_volume(volume_pair)
    {:teaspoon, y}
  end
 # From tablespoon to teaspoon
  def convert(volume_pair, unit) when unit == :teaspoon and elem(volume_pair, 0) == :tablespoon do
    y= get_volume(volume_pair)
    y = (y * 15) / 5
    {:teaspoon, y}
  end
 # From Cup to teaspoon
  def convert(volume_pair, unit) when unit == :teaspoon and elem(volume_pair, 0) == :cup do
    y= get_volume(volume_pair)
    y = (y * 240) / 5
    {:teaspoon, y}
  end


# For Teaspoon
  # From Milliliter to tablespoon
  def convert(volume_pair, unit) when unit == :tablespoon and elem(volume_pair, 0) == :milliliter do
    y= get_volume(volume_pair)
    y = y / 15
    {:tablespoon, y}
  end
 # From Fluid_Ounce to tablespoon
  def convert(volume_pair, unit) when unit == :tablespoon and elem(volume_pair, 0) == :fluid_ounce do
    y= get_volume(volume_pair)
    y = (y * 30) / 15
    {:tablespoon, y}
  end
 # From teaspoon to tablespoon
  def convert(volume_pair, unit) when unit == :tablespoon and elem(volume_pair, 0) == :teaspoon do
    y= get_volume(volume_pair)
    y = (y * 5) / 15
    {:tablespoon, y}
  end
 # From tablespoon to tablespoon
  def convert(volume_pair, unit) when unit == :tablespoon and elem(volume_pair, 0) == :tablespoon do
    y= get_volume(volume_pair)
    {:tablespoon, y}
  end
 # From Cup to tablespoon
  def convert(volume_pair, unit) when unit == :tablespoon and elem(volume_pair, 0) == :cup do
    y= get_volume(volume_pair)
    y = (y * 240) / 15
    {:tablespoon, y}
  end
end
