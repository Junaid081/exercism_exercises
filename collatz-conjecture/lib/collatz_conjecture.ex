defmodule CollatzConjecture do

  @spec calc(input :: pos_integer()) :: non_neg_integer()
  def calc(input) do
    calculate(input, value =0)
  end
  defp calculate(input, value) when is_number(input) and input == 1 do
    value
  end  
  defp calculate(input, value) when is_number(input) and input > 1 do
       rm = rem(input, 2)
    if rm == 0 do
      input = div(input, 2)
      value = value + 1
      calculate(input, value)
    else
      value = value + 1
      input = (3*input) + 1
      calculate(input, value)
    end
  end


end
