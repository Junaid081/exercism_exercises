defmodule LanguageList do

  def new() do
    []
  end

  def add(list, language) do
    list = [language] ++ list 
  end

  def remove(list) do
  [head | tail] = list
    tail
  end

  def first(list) do
    [head | tail] = list
    head
  end

  def count(list) do
   coun(list , value = 0)   
  end

  def functional_list?(list) do
     exist(list)
  end

  defp coun([head | tail], value) do
    value = value + 1
    coun(tail, value)
  end
  defp coun([], value) do
    value
  end

  defp exist([head | tail]) do
    if head == "Elixir" do
      true
    else
    exist(tail)
  end
  end
  defp exist([]) do
    false
  end
end
