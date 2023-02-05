defmodule BirdCount do
  def today(list) do
    count(list)
  end
  defp count([head | tail]) do
  head
  end
  defp count([]) do
  nil
  end

  def increment_day_count(list) do
    increment(list)
  end
   defp increment([head | tail]) do
  head = head+1
  [head]++tail
  end
  defp increment([]) do
  [1]
  end

  def has_day_without_birds?(list) do
    check(list)
  end
  defp check([head | tail]) do
    if head == 0 do
      true
    else
      check(tail)
    end
  end
  defp check([]) do
   false
  end

  def total(list) do
    total_number(list, value = 0)
  end
  defp total_number([head | tail], value) do
  value = value + head
    total_number(tail, value)
  end
  defp total_number([], value) do
  value
  end

  def busy_days(list) do
    busy_day(list, value = 0)
  end
  defp busy_day([head | tail], value) do
    if head > 4 do
    value = value + 1
    busy_day(tail, value)
    else
    busy_day(tail, value)
    end
  end
  defp busy_day([], value) do
  value
  end
end
