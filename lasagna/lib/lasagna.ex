defmodule Lasagna do
  def expected_minutes_in_oven() do
   x=40
    x
  end
  def remaining_minutes_in_oven(x) do
  x= expected_minutes_in_oven() - x
  x
  end
  def preparation_time_in_minutes(x) do
  x = x*2
  x
  end
  def total_time_in_minutes(x,y) do
  y= y+preparation_time_in_minutes(x)
  y
  end
  def alarm() do
    "Ding!"
  end
end
